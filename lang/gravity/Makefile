# $OpenBSD: Makefile,v 1.2 2017/07/09 18:33:22 bcallah Exp $

V =		0.2.8
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

COMPILER =		clang
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
