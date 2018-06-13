# $OpenBSD: Makefile,v 1.11 2018/06/13 01:50:46 bcallah Exp $

COMMENT =	small, high performance language with a modern syntax
CATEGORIES =	lang

GH_ACCOUNT =	marcobambini
GH_PROJECT =	gravity
GH_TAGNAME =	0.5.0

HOMEPAGE =	http://creolabs.com/gravity
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c m

USE_GMAKE =	Yes

pre-configure:
	sed -i 's,-O2,${CFLAGS},g' ${WRKSRC}/Makefile \
		${WRKSRC}/api/Makefile

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/gravity ${PREFIX}/bin

do-test:
	cd ${WRKSRC} && ./unittest test

.include <bsd.port.mk>
