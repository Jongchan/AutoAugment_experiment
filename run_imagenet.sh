

# BASELINE w/ 270 epochs
#CUDA_VISIBLE_DEVICES=0,1,2,3,4,5,6,7 \
#    python main_imagenet.py \
#    -a resnet50 \
#    --epochs 270 \
#    --workers 18 \
#    --batch-size 512 --lr 0.2 \
#    --exp-name resnet50_batchsize_256_lr_0.1_epochs_270 /lunit/data/jcpark/ImageNet/ILSVRC2012 \
#    >> experiments/resnet50_batchsize_256_lr_0.1_epochs_270/train_val.log &&

# AUTOAUGMENT
CUDA_VISIBLE_DEVICES=0,1,2,3,4,5,6,7 \
    python main_imagenet.py \
    -a resnet50 \
    --epochs 270 \
    --workers 18 \
    --batch-size 512 --lr 0.2 --autoaugment \
    --exp-name resnet50_batchsize_256_lr_0.1_epochs_270_autoaugment /home/user/Data/ImageNet/ \
    >> experiments/resnet50_batchsize_256_lr_0.1_epochs_270_autoaugment/train_val.log &&

# AUTOAUGMENT
CUDA_VISIBLE_DEVICES=0,1,2,3,4,5,6,7 \
    python main_imagenet.py \
    -a resnet50 \
    --epochs 270 \
    --workers 18 \
    --batch-size 512 --lr 1.6 --update-interval 8 --autoaugment \
    --exp-name resnet50_batchsize_256_lr_0.1_epochs_270_autoaugment_bs_4096 /home/user/Data/ImageNet/ \
    >> experiments/resnet50_batchsize_256_lr_0.1_epochs_270_autoaugment_bs_4096/train_val.log &
