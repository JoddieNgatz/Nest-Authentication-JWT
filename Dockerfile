# Install node js
FROM node:14-alpine
#Add work directory
WORKDIR /app  
#add package.json file
ADD package.json /app/package.json
#point npm to official registry
RUN npm config set registry http://registry.npmjs.org
#install all packages
RUN npm install
#copy app directory
ADD . /app
#Expose docker container port
EXPOSE 8080
#start command prompt in container
CMD ["npm", "run", "start"]
## in command promp build <docker build -t Nest-Authentication-JWT .>
## run image locally <docker run -p 8080:8080 nest-authentication-jwt>
## NB: bind your container ports with host.