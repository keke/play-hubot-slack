FROM ubuntu

RUN apt-get update && apt-get -y install git nodejs npm
RUN mkdir app
RUN cd app
RUN git clone https://github.com/keke/play-hubot-slack.git --branch linkwithslack --single-branch
RUN cd play-hubot-slack
RUN npm install

CMD echo > "hello"
