FROM tensorflow/tensorflow:1.15.5-gpu
ENV TZ=Asia/Seoul
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
MAINTAINER rune2002@hyundai.com
RUN apt-get -y update
RUN apt-get -y install python3-pip
RUN pip3 install --upgrade pip
RUN pip3 install jupyter
RUN pip3 install gym
RUN pip3 install matplotlib
RUN pip3 install seaborn
RUN apt-get -y install python3-skimage
RUN mkdir /tf_ws
VOLUME ["/tf_ws"]
WORKDIR /tf_ws
