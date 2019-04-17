# The MIT License
#
#  Copyright (c) 2017, Markus Helm
#
#  Permission is hereby granted, free of charge, to any person obtaining a copy
#  of this software and associated documentation files (the "Software"), to deal
#  in the Software without restriction, including without limitation the rights
#  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
#  copies of the Software, and to permit persons to whom the Software is
#  furnished to do so, subject to the following conditions:
#
#  The above copyright notice and this permission notice shall be included in
#  all copies or substantial portions of the Software.
#
#  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
#  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
#  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
#  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
#  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
#  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
#  THE SOFTWARE.

FROM node:10.15.3-alpine
MAINTAINER Markus Helm <markus.m.helm@live.de>

USER root

RUN \
  npm config set proxy http://10.66.84.153:3128 \
  && \
  npm config set https-proxy http://10.66.84.153:3128 \
  && \
  npm config set strict-ssl "false"

RUN \
  npm install -g @angular/cli@latest
RUN \
  npm install -g node-gyp@3.6.2
RUN \
  npm install -g typescript@^2.0.2
RUN \
  npm install -g closure-util
RUN \
  npm install openlayers@4.6.5
RUN \
  npm install -g node-sass