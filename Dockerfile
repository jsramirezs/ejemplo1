FROM ubuntu 

ADD . /app 

RUN apt-get update 
RUN apt-get upgrade -y 
RUN apt-get install -y nodejs npm

RUN cd /app && npm install 

EXPOSE 8000

CMD cd /app & npm start
