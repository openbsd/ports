# $OpenBSD: Makefile,v 1.13 2013/11/09 23:19:02 naddy Exp $

VERSION =	2.52
REVISION =	5

MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/config

post-install:
	cd ${PREFIX}/info && mv autoconf.info autoconf${SUFFIX}.info && rm standards.info

TEST_FLAGS= M4=/usr/local/bin/gm4

.include <bsd.port.mk>
