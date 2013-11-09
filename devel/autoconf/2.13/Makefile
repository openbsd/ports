# $OpenBSD: Makefile,v 1.10 2013/11/09 23:19:02 naddy Exp $

VERSION =	2.13
REVISION =	3

CONFIGURE_STYLE = gnu dest

MAKE_FLAGS = 	acdatadir=${PREFIX}/share/autoconf${SUFFIX}
FAKE_FLAGS = 	acdatadir=${WRKINST}${PREFIX}/share/autoconf${SUFFIX}

post-install:
	cd ${PREFIX}/info && mv autoconf.info autoconf${SUFFIX}.info && rm standards.info

TEST_DEPENDS=devel/dejagnu

.include <bsd.port.mk>
