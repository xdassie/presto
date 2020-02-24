FROM prestosql/presto:330
USER root
RUN yum -y update
ARG DIRLIST="/usr/lib/presto/ /usr/lib/presto/etc"
RUN chgrp -Rf root ${DIRLIST} && chmod -Rf g+wr  ${DIRLIST}
