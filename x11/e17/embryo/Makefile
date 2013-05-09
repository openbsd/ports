# $OpenBSD: Makefile,v 1.19 2013/05/09 13:00:13 rpe Exp $

COMMENT =		C like scripting language used in E17

DISTNAME =		embryo-1.7.6
EPOCH =			2

SHARED_LIBS +=		embryo 3.0 	# 8.6

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c eina m pthread

MODULES =		converters/libiconv

LIB_DEPENDS =		x11/e17/eina>=1.7.6v1


CONFIGURE_ARGS =	--disable-doc

.include <bsd.port.mk>
