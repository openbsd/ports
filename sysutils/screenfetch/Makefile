# $OpenBSD: Makefile,v 1.3 2018/08/28 20:05:18 bcallah Exp $

COMMENT =	display system information in the terminal for screenshots
PKGNAME =	${DISTNAME:L}
REVISION =	1

GH_ACCOUNT =	KittyKatt
GH_PROJECT =	screenFetch
GH_TAGNAME =	v3.8.0

CATEGORIES =	sysutils misc

MAINTAINER =	Charlene Wendling <julianaito@posteo.jp>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =	graphics/scrot \
		net/curl \
		shells/bash

NO_BUILD =	Yes
NO_TEST =	Yes

PKG_ARCH =	*

# Upstream has no Makefile.
do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/screenfetch-dev ${PREFIX}/bin/screenfetch
	${INSTALL_MAN} ${WRKSRC}/screenfetch.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
