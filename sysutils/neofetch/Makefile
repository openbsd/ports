# $OpenBSD: Makefile,v 1.1.1.1 2018/07/18 09:28:55 bcallah Exp $

COMMENT =	system information tool written in bash
CATEGORIES =	sysutils misc

GH_ACCOUNT =	dylanaraps
GH_PROJECT =	neofetch
GH_TAGNAME =	5.0.0

MAINTAINER =	Charlene Wendling <julianaito@posteo.jp>

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
