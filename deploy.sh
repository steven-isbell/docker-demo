cd ~/DevMountain/lessons/mentor-brownbags/docker-demo
git pull
docker build -f Dockerfile-prod -t docker-demo-image .
docker rm -f docker-demo-container
docker run -d -p 3001:3001 --restart always --name="docker-demo-container" -i docker-demo-image
docker container prune -f
docker image prune -f
