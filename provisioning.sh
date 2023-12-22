#!/bin/false
# This file will be sourced in init.sh
# Namespace functions with provisioning_

# https://raw.githubusercontent.com/ai-dock/stable-diffusion-webui/main/config/provisioning/default.sh

### Edit the following arrays to suit your workflow

DISK_GB_REQUIRED=30

EXTENSIONS=(
    "https://github.com/Mikubill/sd-webui-controlnet"
    "https://github.com/d8ahazard/sd_dreambooth_extension"
    "https://github.com/deforum-art/sd-webui-deforum"
    #"https://github.com/adieyal/sd-dynamic-prompts"
    "https://github.com/ototadana/sd-face-editor"
    "https://github.com/AlUlkesh/stable-diffusion-webui-images-browser"
    "https://github.com/hako-mikan/sd-webui-regional-prompter"
    "https://github.com/Coyote-A/ultimate-upscale-for-automatic1111"
    "https://github.com/fkunn1326/openpose-editor"
    "https://github.com/Gourieff/sd-webui-reactor"
)

CHECKPOINT_MODELS=(
    #"https://huggingface.co/runwayml/stable-diffusion-v1-5/resolve/main/v1-5-pruned-emaonly.ckpt"
    #"https://huggingface.co/stabilityai/stable-diffusion-2-1/resolve/main/v2-1_768-ema-pruned.ckpt"
    #"https://huggingface.co/stabilityai/stable-diffusion-xl-base-1.0/resolve/main/sd_xl_base_1.0.safetensors"
    #"https://huggingface.co/stabilityai/stable-diffusion-xl-refiner-1.0/resolve/main/sd_xl_refiner_1.0.safetensors"
    # lazymixRealAmateur_v30a.safetensors https://civitai.com/models/10961?modelVersionId=106464
    "https://civitai.com/api/download/models/106464?type=Model&format=SafeTensor&size=full&fp=fp16"
    # juggernautXL_v7Rundiffusion.safetensors
    # "https://civitai.com/api/download/models/240840?type=Model&format=SafeTensor&size=full&fp=fp16"
    # Epic realism pruned Natural Sin https://civitai.com/models/25694/epicrealism?modelVersionId=134065
    #"https://civitai.com/api/download/models/160989?type=Model&format=SafeTensor&size=pruned&fp=fp16"
    # Anything V3 anythingV3_fp16.ckpt - https://civitai.com/models/66/anything-v3
    #"https://civitai.com/api/download/models/75?type=Model&format=PickleTensor&size=full&fp=fp16"
    # perfectdeliberate_v5.safetensors https://civitai.com/models/24350/perfectdeliberate?modelVersionId=253055
    "https://civitai.com/api/download/models/253055?type=Model&format=SafeTensor&size=full&fp=fp32"
    # anrealspicemix_v20.safetensors 
    # "https://civitai.com/api/download/models/251594?type=Model&format=SafeTensor&size=pruned&fp=fp16"
    # Actual OG stable diffusion model
    #"https://huggingface.co/runwayml/stable-diffusion-v1-5/resolve/main/v1-5-pruned.safetensors?download=true"
    # Hassaku Hentai Model https://civitai.com/models/2583/hassaku-hentai-model?modelVersionId=106922
    "https://civitai.com/api/download/models/106922?type=Model&format=SafeTensor&size=pruned&fp=fp16"
    # FM https://civitai.com/models/94540/fluffymarshmallow?modelVersionId=102100
    #"https://civitai.com/api/download/models/102100"
    # CA 
    #"https://huggingface.co/Kybalico/CandyApple/resolve/main/candyApple_v10.safetensors?download=true"
    # CalicoMix https://civitai.com/models/49567/calicomix
    #"https://civitai.com/api/download/models/138124?type=Model&format=SafeTensor&size=full&fp=fp16"
    # CalicoMixReal https://civitai.com/models/83593/calicomixreal
    "https://civitai.com/api/download/models/93282?type=Model&format=SafeTensor&size=pruned&fp=fp16"
    # Dreamshaper 
    "https://civitai.com/api/download/models/128713?type=Model&format=SafeTensor&size=pruned&fp=fp16"
    # https://civitai.com/models/82543/pornmaster-amateur
    "https://civitai.com/api/download/models/176969?type=Model&format=SafeTensor&size=full&fp=fp32"
    # amateur -inpainting version
    "https://civitai.com/api/download/models/176944?type=Model&format=SafeTensor&size=full&fp=fp32"
    # Uber realistic p merge https://civitai.com/models/2661?modelVersionId=15640
    "https://civitai.com/api/download/models/15640"
)

LORA_MODELS=(
    #"https://civitai.com/api/download/models/16576"
    # Ukiyo-e.safetensors https://civitai.com/models/94551/leosams-ukiyo-e-kawase-hasui-painting-style-lora?modelVersionId=100859
    "https://civitai.com/api/download/models/100859?type=Model&format=SafeTensor"
    #NSFW POV All In One SDXL
    #good examples - https://civitai.com/images/4066339 + read comment threads
    "https://civitai.com/api/download/models/160240?type=Model&format=SafeTensor"
    #POV facesitting https://civitai.com/models/37343/pov-facesitting
    "https://civitai.com/api/download/models/43354"
    # Hairy Pubic Hair.safetensors https://civitai.com/models/125598/hairy-unshaven-natural-pubic-hair-female
    "https://civitai.com/api/download/models/137206?type=Model&format=SafeTensor"
    # PeeingWoman1.2.safetensors https://civitai.com/models/24221/peeing-woman
    "https://civitai.com/api/download/models/32121"
    # femboiFull.safetensors https://civitai.com/models/17524/femboi-full-femboytrap-concept-lora
    "https://civitai.com/api/download/models/20713?type=Model&format=SafeTensor&size=full&fp=fp16"
    # age_slider_v20.safetensors https://civitai.com/models/128417/age-slider?modelVersionId=143150
    "https://civitai.com/api/download/models/143150"
    # color_temperature_slider_v1.safetensors  https://civitai.com/models/127535/color-temperature-slider-lora?modelVersionId=139548
    "https://civitai.com/api/download/models/139548?type=Model&format=SafeTensor"
    #zoom_slider_v1.safetensors https://civitai.com/models/114460/zoom-slider-lora -7 to 7
    "https://civitai.com/api/download/models/123732?type=Model&format=SafeTensor"
    # skin tone slider -5 to 5 https://civitai.com/models/112594/skin-tone-slider-lora
    "https://civitai.com/api/download/models/121575?type=Model&format=SafeTensor"
    # Weight slider -3 to 3 https://civitai.com/models/112552/weight-slider-lora
    "https://civitai.com/api/download/models/126824?type=Model&format=SafeTensor"
    # people count slider -8 to 8 https://civitai.com/models/114104/people-count-slider-lora
    "https://civitai.com/api/download/models/123309?type=Model&format=SafeTensor"
    # muscle slider -3 to 5 https://civitai.com/models/112658/muscle-slider-lora
    "https://civitai.com/api/download/models/121658?type=Model&format=SafeTensor"
    # Detail Slider -5 to 5 https://civitai.com/models/153562/detail-slider-lora
    "https://civitai.com/api/download/models/171989?type=Model&format=SafeTensor"
    # hair length -8 to 8 or more https://civitai.com/models/114215/hair-length-slider-lora
    "https://civitai.com/api/download/models/123434?type=Model&format=SafeTensor"
    # SDXL photorealistic slider 0 to 5 https://civitai.com/models/117060/photorealistic-slider-sdxl-lora
    "https://civitai.com/api/download/models/126807?type=Model&format=SafeTensor"
    # curly hair slider -8 to 8 or more https://civitai.com/models/133700/curly-hair-slider-lora
    "https://civitai.com/api/download/models/147196?type=Model&format=SafeTensor"
    # gender slider -5 to 5 https://civitai.com/models/112988/gender-slider-lora
    "https://civitai.com/api/download/models/122023?type=Model&format=SafeTensor"
    # very_thin_pussy.v1.0.safetensors https://civitai.com/models/71707/very-thin-pussy-or-siren-lora-012?modelVersionId=76437
    "https://civitai.com/api/download/models/76437"
    
)

VAE_MODELS=(
    #"https://huggingface.co/stabilityai/sd-vae-ft-ema-original/resolve/main/vae-ft-ema-560000-ema-pruned.safetensors"
    "https://huggingface.co/stabilityai/sd-vae-ft-mse-original/resolve/main/vae-ft-mse-840000-ema-pruned.safetensors"
    "https://huggingface.co/stabilityai/sdxl-vae/resolve/main/sdxl_vae.safetensors"
)

ESRGAN_MODELS=(
    "https://huggingface.co/ai-forever/Real-ESRGAN/resolve/main/RealESRGAN_x4.pth"
    "https://civitai.com/api/download/models/125843"
    #"https://huggingface.co/FacehugmanIII/4x_foolhardy_Remacri/resolve/main/4x_foolhardy_Remacri.pth"
    #"https://huggingface.co/Akumetsu971/SD_Anime_Futuristic_Armor/resolve/main/4x_NMKD-Siax_200k.pth"
)

CONTROLNET_MODELS=(
    "https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/control_canny-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/control_depth-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/control_hed-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/control_mlsd-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/control_normal-fp16.safetensors"
    "https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/control_openpose-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/control_scribble-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/control_seg-fp16.safetensors"
    "https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/t2iadapter_canny-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/t2iadapter_color-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/t2iadapter_depth-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/t2iadapter_keypose-fp16.safetensors"
    "https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/t2iadapter_openpose-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/t2iadapter_seg-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/t2iadapter_sketch-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/t2iadapter_style-fp16.safetensors"
    # Control net for tiled upscaling https://huggingface.co/lllyasviel/ControlNet-v1-1/tree/main
    "https://huggingface.co/lllyasviel/ControlNet-v1-1/resolve/main/control_v11f1e_sd15_tile.pth?download=true"
    "https://huggingface.co/lllyasviel/ControlNet-v1-1/resolve/main/control_v11f1e_sd15_tile.yaml?download=true"
)

EMBEDDING_MODELS=(
    # use epiCNegative for epicrealism model https://civitai.com/models/89484/epicrealism-embeddings?modelVersionId=95263
    "https://civitai.com/api/download/models/95263?type=Model&format=Other"
)


### DO NOT EDIT BELOW HERE UNLESS YOU KNOW WHAT YOU ARE DOING ###

function provisioning_start() {
    DISK_GB_AVAILABLE=$(($(df --output=avail -m "${WORKSPACE}" | tail -n1) / 1000))
    DISK_GB_USED=$(($(df --output=used -m "${WORKSPACE}" | tail -n1) / 1000))
    DISK_GB_ALLOCATED=$(($DISK_GB_AVAILABLE + $DISK_GB_USED))
    provisioning_print_header
    provisioning_get_extensions
    provisioning_get_models \
        "/opt/stable-diffusion-webui/models/Stable-diffusion" \
        "${CHECKPOINT_MODELS[@]}"
    provisioning_get_models \
        "/opt/stable-diffusion-webui/models/Lora" \
        "${LORA_MODELS[@]}"
    provisioning_get_models \
        "/opt/stable-diffusion-webui/extensions/sd-webui-controlnet/models" \
        "${CONTROLNET_MODELS[@]}"
    provisioning_get_models \
        "/opt/stable-diffusion-webui/models/VAE" \
        "${VAE_MODELS[@]}"
    provisioning_get_models \
        "/opt/stable-diffusion-webui/models/ESRGAN" \
        "${ESRGAN_MODELS[@]}"
    provisioning_get_models \
        "/opt/stable-diffusion-webui/embeddings" \
        "${EMBEDDING_MODELS[@]}"
    mv /opt/stable-diffusion-webui/models/ESRGAN/4xUltrasharp_4xUltrasharpV10.{pt,pth}
    provisioning_print_end
}

function provisioning_get_extensions() {
    for repo in "${EXTENSIONS[@]}"; do
        dir="${repo##*/}"
        path="/opt/stable-diffusion-webui/extensions/${dir}"
        requirements="${path}/requirements.txt"
        if [[ -d $path ]]; then
            if [[ ${AUTO_UPDATE,,} != "false" ]]; then
                printf "Updating extension: %s...\n" "${repo}"
                ( cd "$path" && git pull )
                if [[ -e $requirements ]]; then
                    micromamba -n webui run ${PIP_INSTALL} -r "$requirements"
                fi
            fi
        else
            printf "Downloading extension: %s...\n" "${repo}"
            git clone "${repo}" "${path}"
            if [[ -e $requirements ]]; then
                micromamba -n webui run ${PIP_INSTALL} -r "${requirements}"
            fi
        fi
    done
}

function provisioning_get_models() {
    if [[ -z $2 ]]; then return 1; fi
    dir="$1"
    mkdir -p "$dir"
    shift
    if [[ $DISK_GB_ALLOCATED -ge $DISK_GB_REQUIRED ]]; then
        arr=("$@")
    else
        printf "WARNING: Low disk space allocation - Only the first model will be downloaded!\n"
        arr=("$1")
    fi
    
    printf "Downloading %s model(s) to %s...\n" "${#arr[@]}" "$dir"
    for url in "${arr[@]}"; do
        printf "Downloading: %s\n" "${url}"
        provisioning_download "${url}" "${dir}"
        printf "\n"
    done
}

function provisioning_print_header() {
    printf "\n##############################################\n#                                            #\n#          Provisioning container            #\n#                                            #\n#         This will take some time           #\n#                                            #\n# Your container will be ready on completion #\n#                                            #\n##############################################\n\n"
    if [[ $DISK_GB_ALLOCATED -lt $DISK_GB_REQUIRED ]]; then
        printf "WARNING: Your allocated disk size (%sGB) is below the recommended %sGB - Some models will not be downloaded\n" "$DISK_GB_ALLOCATED" "$DISK_GB_REQUIRED"
    fi
}

function provisioning_print_end() {
    printf "\nProvisioning complete:  Web UI will start now\n\n"
}

# Download from $1 URL to $2 file path
function provisioning_download() {
    wget -qnc --content-disposition --show-progress -e dotbytes="${3:-4M}" -P "$2" "$1"
}

provisioning_start