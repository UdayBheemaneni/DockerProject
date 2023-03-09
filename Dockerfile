FROM alpine
RUN docker run -itd --name cont-1 ubuntu
RUN docker attach cont-1
RUN cd tmp
RUN touch f1
RUN exit
RUN docker commit cont-1 InfiniteRoot
RUN docker run -itd --name cont-2 infiniteroot
RUN docker tag infiniteroot udaybheemaneni/infiniteroot:latest
RUN docker push udaybheemaneni/infiniteroot
