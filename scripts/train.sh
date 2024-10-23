
export HF_HUB_ENABLE_HF_TRANSFER=1


##########################################################################
# This is an example script to train the reward model.                   #
# Please adjust accelerate/ds3.yaml according to the GPUs you are using. #
##########################################################################


ACCELERATE_LOG_LEVEL=info TRANSFORMERS_VERBOSITY=info TRAINING_TYPE=RM accelerate launch --config_file accelerate/ds3.yaml main.py configs/llama.yaml