# $OpenBSD: Makefile,v 1.4 2020/02/14 11:11:33 sthen Exp $

COMMENT =	very basic terminfo library

GH_ACCOUNT =	neovim
GH_PROJECT =	unibilium
GH_TAGNAME =	v2.0.0

SHARED_LIBS +=	unibilium	1.0 # 4.0

CATEGORIES =	devel

# LGPLv3+
PERMIT_PACKAGE =	Yes

DEBUG_PACKAGES =	${BUILD_PACKAGES}

MAKE_FLAGS =	PREFIX=${PREFIX} \
		MANDIR=${PREFIX}/man

USE_GMAKE =	Yes

.include <bsd.port.mk>
