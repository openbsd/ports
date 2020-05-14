# $OpenBSD: Makefile,v 1.2 2020/05/14 19:36:05 bket Exp $

COMMENT =	unionfs filesystem implementation

GH_ACCOUNT =	rpodgorny
GH_PROJECT =	unionfs-fuse
GH_TAGNAME =	v2.1

CATEGORIES =	sysutils

MAINTAINER =	Bjorn Ketelaars <bket@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB =	c fuse pthread

ALL_TARGET =	build

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/src/unionfs ${PREFIX}/bin/
	${INSTALL_PROGRAM} ${WRKSRC}/src/unionfsctl ${PREFIX}/bin/
	${INSTALL_MAN} ${WRKSRC}/man/unionfs.8 ${PREFIX}/man/man8/

do-test:
	cd ${WRKSRC} && ./test_legacy.sh

.include <bsd.port.mk>
