FROM docker.io/library/node
RUN npm install -g sass
WORKDIR /process/
RUN wget -O bootstrap.zip https://github.com/twbs/bootstrap/archive/v5.3.3.zip
RUN unzip  -d . bootstrap.zip
# We now have a copy of the bootstrap source in /process/bootstrap-5.3.3 - note this will change on new versions!
# Move this to ./bootstrap/ so we don't need to rename in future
RUN mv bootstrap-5.3.3 bootstrap
# Copy all the overrides
COPY overrides/ .
# Now switch to run time
COPY ./build.sh /process/build.sh
RUN /bin/sh ./build.sh
CMD ["sh", "-c", "cp -r /dist/* /output"]