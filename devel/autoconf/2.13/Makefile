# $OpenBSD: Makefile,v 1.7 2010/11/15 20:21:01 espie Exp $

VERSION =	2.13
REVISION =	2

CONFIGURE_STYLE = gnu dest
USE_GROFF =	No

MAKE_FLAGS = 	acdatadir=${PREFIX}/share/autoconf${SUFFIX}
FAKE_FLAGS = 	acdatadir=${WRKINST}${PREFIX}/share/autoconf${SUFFIX}

post-install:
	cd ${PREFIX}/info && mv autoconf.info autoconf${SUFFIX}.info && rm standards.info

REGRESS_DEPENDS=devel/dejagnu

.include <bsd.port.mk>
