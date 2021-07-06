FROM python:3.7

LABEL maintainer="ferpitol@gmail.com"
ENV HTTP_PROXY="http://proxy-dmz.intel.com:911"
ENV HTTPS_PROXY="http://proxy-dmz.intel.com:912"
RUN \
    useradd user \
    && mkdir /home/user \
    && chown user:user /home/user \
    && pip3 install \
        ipython \
        scipy==1.7.0 \
        scikit-learn==0.24.1 \
        numpy==1.21.0 \
        pandas==1.3.0 \
        gensim==4.0.1 \
        psycopg2==2.9.1 

EXPOSE 8888

WORKDIR /home/user