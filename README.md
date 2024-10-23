# <center>Cross-lingual Transfer of Reward Models in Multilingual Alignment</center>

<p align="center">
    <a href="https://huggingface.co/collections/iqwiki-kor/cross-lingual-transfer-of-reward-models-6717b1bb701bb25af26144a7"><img src="https://img.shields.io/badge/ArXiv-Paper_(TBU)-f26255" alt="🤗"></a>
    <a href="https://huggingface.co/collections/iqwiki-kor/cross-lingual-transfer-of-reward-models-6717b1bb701bb25af26144a7"><img src="https://img.shields.io/badge/🤗_Collection-Models_and_Datasets-8c5eb5" alt="🤗"></a>
</p>

This repository contains the training codes and configurations for reward models used in ***"Cross-lingual Transfer of Reward Models in Multilingual Alignment"*** by [**Jiwoo Hong**](https://jiwooya1000.github.io/), [**Noah Lee**](https://nlee-208.github.io/), [**Rodrigo Martínez-Castaño**](brunneis.com), [**César Rodríguez**](https://cesar.cafe/
), and [**James Thorne**](https://jamesthorne.com/). The code was built on top of [`alignment-handbook`](https://github.com/huggingface/alignment-handbook) by 🤗HuggingFace team.


### Setup

Please install adequate `torch` before installing the libraries through `requirements.txt`.


### Training Models

Currently, this repository supports `SFT`, `DPO`, and `RM` by automatically mapping the data preprocessing and Trainer calling through passing `TRAINING_TYPE` as an environment variable. Please refer to `configs/llama.yaml` and `configs/qwen.yaml` to reproduce the reward models used in the paper.

```bash
ACCELERATE_LOG_LEVEL=info TRANSFORMERS_VERBOSITY=info TRAINING_TYPE=RM accelerate launch --config_file accelerate/ds3.yaml main.py configs/llama.yaml
```