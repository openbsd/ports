# $OpenBSD: Makefile,v 1.1.1.1 2017/01/19 19:44:47 edd Exp $

COMMENT =	very basic terminfo library
VERSION =	1.2.0
DISTNAME =	unibilium-${VERSION}

GH_ACCOUNT =	mauke
GH_PROJECT =	unibilium
GH_TAGNAME =	v${VERSION}

SHARED_LIBS +=	unibilium	0.0 # 3.0

CATEGORIES =	devel

# LGPLv3+
PERMIT_PACKAGE_CDROM =	Yes

MAKE_FLAGS =	PREFIX=${PREFIX} \
		MANDIR=${PREFIX}/man

USE_GMAKE =	Yes

.include <bsd.port.mk>
