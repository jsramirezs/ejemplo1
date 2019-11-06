FROM ubuntu 

ADD . /app 

RUN apt-get update 
RUN apt-get install -y nodejs
RUN apt-get install -y npm 
RUN cd /app 
RUN npm install 

# esto debería iniciar tres procesos, mysql y ssh 
# en segundo plano y node app en primer plano 
# no es tremendamente bonito? <3 
CMD export PORT=8080 & npm start