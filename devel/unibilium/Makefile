# $OpenBSD: Makefile,v 1.5 2020/06/08 21:02:55 edd Exp $

COMMENT =	very basic terminfo library

GH_ACCOUNT =	neovim
GH_PROJECT =	unibilium
GH_TAGNAME =	v2.1.0

SHARED_LIBS +=	unibilium	1.1 # 4.1

CATEGORIES =	devel

# LGPLv3+
PERMIT_PACKAGE =	Yes

DEBUG_PACKAGES =	${BUILD_PACKAGES}

MAKE_FLAGS =	PREFIX=${PREFIX} \
		MANDIR=${PREFIX}/man

USE_GMAKE =	Yes

.include <bsd.port.mk>
