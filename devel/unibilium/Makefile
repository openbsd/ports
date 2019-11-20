# $OpenBSD: Makefile,v 1.3 2019/11/20 13:38:44 edd Exp $

COMMENT =	very basic terminfo library
VERSION =	2.0.0
DISTNAME =	unibilium-${VERSION}

GH_ACCOUNT =	neovim
GH_PROJECT =	unibilium
GH_TAGNAME =	v${VERSION}

SHARED_LIBS +=	unibilium	1.0 # 4.0

CATEGORIES =	devel

# LGPLv3+
PERMIT_PACKAGE =	Yes

DEBUG_PACKAGES =	${BUILD_PACKAGES}

MAKE_FLAGS =	PREFIX=${PREFIX} \
		MANDIR=${PREFIX}/man

USE_GMAKE =	Yes

.include <bsd.port.mk>
