#! /usr/bin/bash

emcc -o out.js  --js-library lib.js squish.bc ./*.cpp -s EXPORTED_FUNCTIONS="['_fromData','_vlImageGetSize','_vlImageSaveLump']"

#// The environment setup code below is customized to use Module.
#// *** Environment setup code ***
#var ENVIRONMENT_IS_WEB = typeof window === 'object';
#var ENVIRONMENT_IS_NODE = (typeof process === 'object' && typeof require === 'function') && !ENVIRONMENT_IS_WEB;
#var ENVIRONMENT_IS_WORKER = typeof importScripts === 'function';
#var ENVIRONMENT_IS_SHELL = !ENVIRONMENT_IS_WEB && !ENVIRONMENT_IS_NODE && !ENVIRONMENT_IS_WORKER;
#
#if (typeof module !== 'undefined') {
#	module['exports'] = Module;
#}
