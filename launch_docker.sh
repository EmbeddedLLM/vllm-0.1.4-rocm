#!/bin/bash
docker run -it \
       --network=host \
       --group-add=video \
       --ipc=host \
       --cap-add=SYS_PTRACE \
       --security-opt seccomp=unconfined \
       --shm-size 8G \
       --device /dev/kfd \
       --device /dev/dri \
       -v /home/akk/tjtanaa/vllm-rocm:/app/libs/vllm-rocm-external \
       -v /home/akk/hf_model:/app/hf_model \
       vllm-rocm-tj \
       bash