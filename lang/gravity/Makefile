# $OpenBSD: Makefile,v 1.3 2017/08/30 04:23:28 bcallah Exp $

V =		0.3.0
COMMENT =	small, high performance language with a modern syntax
DISTNAME =	gravity-${V}
CATEGORIES =	lang

GH_ACCOUNT =	marcobambini
GH_PROJECT =	gravity
GH_TAGNAME =	${V}

HOMEPAGE =	http://creolabs.com/gravity
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c m

# Needs C11
COMPILER =		base-clang ports-clang ports-gcc
COMPILER_LANGS =	c

USE_GMAKE =	Yes

pre-configure:
	sed -i -e 's,-O2,${CFLAGS},g' -e 's,-std=gnu99,-std=gnu11,g' \
		${WRKSRC}/Makefile ${WRKSRC}/api/Makefile

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/gravity ${PREFIX}/bin

do-test:
	cd ${WRKSRC} && ./unittest test

.include <bsd.port.mk>
