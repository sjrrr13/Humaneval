# Baseline
# python predict_generation.py \
#     --device 'gpu:1' \
#     --model_name_or_path facebook/opt-2.7b \
#     --src_length 512 \
#     --tgt_length 256 \
#     --temperature 1 \
#     --top_k 0 \
#     --top_p 0 \
#     --data_file './Humaneval_Solution.jsonl' \
#     --predict_file './Output/2.7b.json' \
#     --dtype 'float32' \
#     --batch_size 1

# Distribute
python predict_generation.py \
    --target_name_or_path facebook/opt-2.7b \
    --draft_name_or_path facebook/opt-350m \
    --src_length 512 \
    --tgt_length 256 \
    --temperature 1 \
    --top_k 0 \
    --top_p 0 \
    --data_file './Humaneval_Solution.jsonl' \
    --predict_file './Output/sps_350m_2.7b.json' \
    --dtype 'float32' \
    --batch_size 1