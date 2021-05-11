Project.ipnyb contains the code that trains and tests the model
Project Results.ipnyb visualizes the results

You want to copy the cs182_project folder (put all contents into a folder with that name if it doesnt exist) into your drive before anything else.

The notebooks and everything code related are in 'rl_project/'
The RAD (more info below) logs are in 'logs/'. The non-RAD ones are in 'logs/trained/prog'.

To start a run, run the code in Project.ipnyb
To visualize your run, run the code in Project Results.ipnyb


Note: Take care while visualizing non-RAD and RAD runs. They have separate instructions given in the notebook.

For training and testing the data (the last line of code in Project.ipnyb), there are two versions:
1. !python -m train_procgen.PUT_YOUR_TRAIN_FILE --env_name fruitbot --distribution_mode easy --num_levels 500 --timesteps_per_proc PUT_YOUR_NUM_TIMESTEPS --save_interval INTERVAL_SAVE --test_worker_interval 2
2. !python -m train_procgen.PUT_YOUR_TRAIN_RAD_FILE --env_name fruitbot --num_levels 500 --data_aug 'PUT_YOUR_AUG' --timesteps_per_proc PUT_YOUR_NUM_TIMESTEPS --test_worker_interval 2

If you want to save your model, do: --model_path '/content/drive/MyDrive/cs182_project/train-procgen/train_procgen/trained/checkpoints/00001' after your training file

Use 1 for non-RAD runs, and 2 for RAD runs.

Options for PUT_YOUR_TRAIN_FILE:
train
train_nature
train_mlp
train_lstm
train_impala_lstm
train_impala_lnlstm
train_cnn
train_cnn_small
train_cnn_lstm
train_cnn_lnlstm

Options for PUT_YOUR_NUM_TIMESTEPS & INTERVAL_SAVE:
In powers of 10 starting for 1M with an interval of 10000

Options for PUT_YOUR_TRAIN_RAD_FILE:
train_rad
train_rad_lnlstm

Options for PUT_YOUR_AUG:
'normal'
'gray'
'cutout'
'cutout_color'
'flip'
'rotate'
'color_jitter'
'crop'
'cutout_color_color_jitter'
'rotate_flip'
'crop_gray_flip_rotate'
'cutout_gray'
'cutout_color_gray'
'cutout_rotate_flip'
'cutout_color_rotate_flip'
'cutout_color_color_jitter_rotate_flip'
'crop_gray_color_jitter'
'rotate_color_jitter'

For my best_test_log.csv, I have gone with the first variant (as per my understanding).
