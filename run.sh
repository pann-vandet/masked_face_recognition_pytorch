CUDA_VISIBLE_DEVICES=0,1,2,3 python -m torch.distributed.launch --nproc_per_node=4 --nnodes=1 --node_rank=0  train.py
ps -ef | grep "train" | grep -v grep | awk '{print "kill -9 "$2}' | sh
