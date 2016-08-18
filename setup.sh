set -e

# Disable camera, we don't have any:
sudo ln /dev/null /dev/raw1394

git clone git@github.com:jdeboi/deepdream-aws.git
cd deepdream-aws
ln -s ~/caffe .
# Get the googlenet model file:
wget http://dl.caffe.berkeleyvision.org/bvlc_googlenet.caffemodel
mv bvlc_googlenet.caffemodel caffe/models/bvlc_googlenet/

# Get some input image:
wget --output-document=output.jpg http://orig13.deviantart.net/90b6/f/2011/145/a/7/the_grid_by_sweetamberkins-d3h6ksq.jpg
# convert daniel.png daniel.jpg

# Run:
# nohup bash layers.sh output.jpg &
