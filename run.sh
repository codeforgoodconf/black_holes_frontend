docker build -t front .
docker run --name frontapp --rm -it -p 5000:5000 -v `pwd`/../spectrum_data:/app/spectrum_data front