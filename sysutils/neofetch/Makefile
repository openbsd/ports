# $OpenBSD: Makefile,v 1.5 2019/02/01 21:23:39 cwen Exp $

COMMENT =	system information tool written in bash
CATEGORIES =	sysutils misc
REVISION =	0

GH_ACCOUNT =	dylanaraps
GH_PROJECT =	neofetch
GH_TAGNAME =	6.0.0

MAINTAINER =	Charlene Wendling <cwen@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =	shells/bash

NO_BUILD =	Yes

NO_TEST =	Yes

PKG_ARCH =	*

# A little nicer than the upstream install target.
do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/neofetch ${PREFIX}/bin/neofetch
	${INSTALL_MAN} ${WRKSRC}/neofetch.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
