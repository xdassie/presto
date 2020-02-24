FROM prestosql/presto:330
USER root
RUN yum -y update
ARG DIRLIST="/usr/lib/presto/ "
RUN mkdir -p ${DIRLIST}  && chgrp -Rf root ${DIRLIST} && chmod -Rf g+rwx  ${DIRLIST}
