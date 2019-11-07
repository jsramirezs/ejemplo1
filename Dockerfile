FROM ubuntu 

ADD . /app 

RUN apt-get update 
RUN apt-get upgrade -y 
RUN apt-get install -y nodejs npm wget net-tools

RUN cd /app && npm install 

CMD cd /app && npm start
