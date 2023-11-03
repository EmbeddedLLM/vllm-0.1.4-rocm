# How to download model from huggingface

## install The HuggingFace Model Downloader 
the script will download the correct version based on os/arch and save the binary as "hfdownloader" in the same folder
```bash
bash <(curl -sSL https://g.bodaay.io/hfd) -h
```
## download vicuna-7b-v1.5
```bash
./hfdownloader -m lmsys/vicuna-7b-v1.5
```

## check the downloaded files
```bash
ls -l Storage
```

## How to download Llama2 
apply for access here
https://huggingface.co/meta-llama/Llama-2-70b-chat-hf

after you got access 
get your token in [huggingface](https://huggingface.co/docs/hub/security-tokens) 

## download model
```bash
./hfdownloader -m meta-llama/Llama-2-70b-chat-hf -t HUGGING_FACE_HUB_TOKEN
```
