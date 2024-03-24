CUDA_VISIBLE_DEVICES=1,2,3 python ../LLaMA-Factory/src/train_bash.py \
    --stage dpo \
    --do_train \
    --model_name_or_path ../model/mistral \
    --dataset_dir ../LLaMA-Factory/data \
    --dataset comparison_gpt4_en \
    --template default \
    --finetuning_type lora \
    --lora_target q_proj,v_proj \
    --output_dir ./output2 \
    --per_device_train_batch_size 2 \
    --gradient_accumulation_steps 4 \
    --lr_scheduler_type cosine \
    --logging_steps 10 \
    --save_steps 1000 \
    --learning_rate 1e-4 \
    --num_train_epochs 5 \
    --plot_loss \
    --fp16
