# $OpenBSD: Makefile,v 1.6 2017/11/21 16:01:19 bcallah Exp $

V =		0.3.8
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

USE_GMAKE =	Yes

pre-configure:
	sed -i 's,-O2,${CFLAGS},g' ${WRKSRC}/Makefile ${WRKSRC}/api/Makefile

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/gravity ${PREFIX}/bin

do-test:
	cd ${WRKSRC} && ./unittest test

.include <bsd.port.mk>
