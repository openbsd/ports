# $OpenBSD: Makefile,v 1.18 2013/03/21 08:48:55 ajacoutot Exp $

COMMENT =		C like scripting language used in E17

DISTNAME =		embryo-1.7.5
EPOCH =			2

SHARED_LIBS +=		embryo 3.0 	# 8.5

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c eina m pthread

MODULES =		converters/libiconv

LIB_DEPENDS =		x11/e17/eina>=1.7.5v1


CONFIGURE_ARGS =	--disable-doc

.include <bsd.port.mk>
