# $OpenBSD: Makefile,v 1.5 2019/10/22 20:10:22 cwen Exp $

COMMENT =	display system information in the terminal for screenshots
PKGNAME =	${DISTNAME:L}

GH_ACCOUNT =	KittyKatt
GH_PROJECT =	screenFetch
GH_TAGNAME =	v3.9.0

CATEGORIES =	sysutils misc

MAINTAINER =	Charlene Wendling <cwen@openbsd.org>

# GPLv3+
PERMIT_PACKAGE =	Yes

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
