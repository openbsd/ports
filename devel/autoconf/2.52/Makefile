# $OpenBSD: Makefile,v 1.12 2013/03/11 10:50:01 espie Exp $

VERSION =	2.52
REVISION =	4

MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/config

post-install:
	cd ${PREFIX}/info && mv autoconf.info autoconf${SUFFIX}.info && rm standards.info

TEST_FLAGS= M4=/usr/local/bin/gm4

.include <bsd.port.mk>
