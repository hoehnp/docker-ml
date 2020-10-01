FROM centos:centos7.8.2003
MAINTAINER Patrick Höhn <hoehnp@gmx.de>

RUN yum -y install epel-release
RUN yum -y install python3-pip gcc gcc-c++ make python3-devel unixODBC-devel git cmake3 wget
RUN ln -s /usr/bin/cmake3 /usr/bin/cmake
RUN cd /root/; curl -k https://ftp.rrzn.uni-hannover.de/pub/mirror/tex-archive/systems/texlive/tlnet/install-tl-unx.tar.gz -o install.tar.gz;  tar xzvf install.tar.gz; cd install-tl-*; ./install-tl
RUN pip3 --no-cache-dir install numpy pandas sklearn matplotlib tikzplotlib datetime torch tensorflow pyodbc scipy keras scikit-build seaborn bokeh 
RUN pip3 --no-cache-dir install plotly opencv-python pint theano graphviz sympy
RUN echo "export PATH=\$PATH:/usr/local/texlive/2020/bin/x86_64-linux/" >> /root/.bashrc
RUN cd /root; git clone https://github.com/martius-lab/EQL; git clone https://github.com/martius-lab/EQL_Tensorflow
