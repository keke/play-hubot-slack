FROM ubuntu

RUN apt-get update && apt-get -y install git nodejs npm && ln -s /usr/bin/nodejs /usr/bin/node
RUN mkdir app
WORKDIR /app
RUN git clone https://github.com/keke/play-hubot-slack.git --branch linkwithslack --single-branch
WORKDIR play-hubot-slack
RUN npm install

CMD echo > "hello"
