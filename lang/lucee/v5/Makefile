# https://download.lucee.org/changelog/
V=		5.4.6.9
REVISION=	0

# N.B. tomcat must be started using a JDK version that is compatible
# with lucee; if it picks up the wrong one by default, you'll need to
# edit /var/db/pkg/tomcat*/+REQUIRING so that javaPathHelper picks
# it up.
RUN_DEPENDS=	jdk->=1.8v0,<12v0:devel/jdk/11 \
		www/tomcat/v9

.include <bsd.port.mk>
