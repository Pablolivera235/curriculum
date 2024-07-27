import * as THREE from "https://cdn.skypack.dev/three@0.129.0/build/three.module.js";
import { OrbitControls } from "https://cdn.skypack.dev/three@0.129.0/examples/jsm/controls/OrbitControls.js";
import { GLTFLoader } from "https://cdn.skypack.dev/three@0.129.0/examples/jsm/loaders/GLTFLoader.js";

//Agregar ojetos en 3D
export function tresD(n, y, j, w, h){

  console.log(`Function tresD called with arguments: ${h}, ${y}`);

  const scene = new THREE.Scene();
  const camera = new THREE.PerspectiveCamera(75, window.innerWidth / window.innerHeight, 0.1, 1000);
  
  let object;
  
  let controls;
  
  let objToRender = 'models';
  
  const loader = new GLTFLoader();

  var obj = n;
  var iden = y;
  let dist = j;
  
  loader.load(
    `../models/${obj}.gltf`,
    function (gltf) {
      object = gltf.scene;
      scene.add(object);
    },
    function (xhr) {
      console.log((xhr.loaded / xhr.total * 100) + '% loaded');
    },
    function (error) {
      console.error(error);
    }
  );

  const renderer = new THREE.WebGLRenderer({ alpha: true });
  renderer.setSize(window.innerWidth, window.innerHeight);
  
  document.getElementById(iden).appendChild(renderer.domElement);


  camera.position.z = objToRender === "models" ? dist : 500;
  
  const topLight = new THREE.DirectionalLight(0xffffff, 1);
  topLight.position.set(500, 500, 500) 
  topLight.castShadow = true;
  scene.add(topLight);
  
  const ambientLight = new THREE.AmbientLight(0x333333, objToRender === "models" ? 1 : 1);
  scene.add(ambientLight);
  
  if (objToRender === "models") {
    controls = new OrbitControls(camera, renderer.domElement);
  }
  
  function animate() {
    requestAnimationFrame(animate);
  
    if (object && objToRender === "models") {
  
    }
    renderer.render(scene, camera);
  }

  var width = w;
  var height = h;
  
  window.addEventListener("resize", function () {
    camera.aspect = window.innerWidth / window.innerHeight;
    camera.updateProjectionMatrix();
    renderer.setSize(width, height);
  });
  
  animate();
  console.log(obj);
  console.log(iden);
  console.log(width);
  console.log(height);
}

//tresD( en nombre va el nombre del gtlf ej: 'nombre', y aquí el del id del div donde va el objeto ej: 'container3D', y aqui va el tamaño ej: 2), width ej:2000, height ej:4000;

// Función para el index

