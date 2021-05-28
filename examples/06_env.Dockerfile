FROM mirror.gcr.io/library/alpine:3.13

# Each one in action
ENV PS1="[\$(echo \$?)]$ "
#ARG PS1="[\$(echo \$?)]$ "
#RUN echo ${PS1}

# Combining them
#ARG ARG_PS1="[\$(echo \$?)]$ "
#ENV PS1=${ARG_PS1}

RUN export PS1
