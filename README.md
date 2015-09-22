# sinatra-docker
Docker container that spins up with everything installed.

execute bash on the container with `docker exec -ti {container name} bash` then run sinatra `ruby main.rb`

If you want sinatra to run when the container comes up, edit `entrypoint.sh`
