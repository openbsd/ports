# $OpenBSD: Makefile,v 1.7 2019/09/16 20:23:48 cwen Exp $

COMMENT =	system information tool written in bash
CATEGORIES =	sysutils misc

GH_ACCOUNT =	dylanaraps
GH_PROJECT =	neofetch
GH_TAGNAME =	6.1.0

MAINTAINER =	Charlene Wendling <cwen@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =	shells/bash

NO_BUILD =	Yes

NO_TEST =	Yes

PKG_ARCH =	*

# A little nicer than the upstream install target.
do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/neofetch ${PREFIX}/bin/neofetch
	${INSTALL_MAN} ${WRKSRC}/neofetch.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
