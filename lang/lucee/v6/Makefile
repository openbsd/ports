V=		6.0.2.45

# jdk 11 preferred, but should still run with 1.8 for now (unsure about
# support for newer versions at this point). tomcat v10 is a big change
# for lucee and modules so probably not until a newer lucee major.
RUN_DEPENDS=	jdk->=1.8v0,<12v0:devel/jdk/11 \
		www/tomcat/v9

.include <bsd.port.mk>
