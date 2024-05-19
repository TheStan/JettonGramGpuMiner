#!/bin/bash
npm install

--api tonapi --bin ./pow-miner-cuda --givers 10000
while true; do
  node send_multigpu_gpu.js --api tonapi --bin ./pow-miner-cuda --givers 10000 --gpu-count 4
  sleep 1;
done;
