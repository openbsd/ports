# https://download.lucee.org/changelog/
V=		6.2.3.35

# N.B. tomcat must be started using a JDK version that is compatible
# with lucee; if it picks up the wrong one by default, you'll need to
# edit /var/db/pkg/tomcat*/+REQUIRING so that javaPathHelper picks
# it up.
#
# supposedly lucee 6.2 should be able to handle tomcat 10+, though it
# didn't work for me in initial tests, so leaving at 9 for now.
RUN_DEPENDS=	jdk->=11v0,<22v0:devel/jdk/21 \
		www/tomcat/v9

.include <bsd.port.mk>
