FROM centos:centos7.8.2003
MAINTAINER Patrick Höhn <hoehnp@gmx.de>

RUN yum -y install python3-pip gcc gcc-c++ make python3-devel unixODBC-devel git
RUN pip3 --no-cache-dir install numpy pandas sklearn matplotlib tikzplotlib datetime torch tensorflow pyodbc scipy keras scikit-build seaborn bokeh 
RUN pip3 --no-cache-dir install plotly opencv-python pint theano graphviz
