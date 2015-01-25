# $OpenBSD: Makefile,v 1.22 2015/01/25 07:46:44 rpe Exp $

COMMENT =		C like scripting language used in E17

DISTNAME =		embryo-1.7.10
EPOCH =			2

SHARED_LIBS +=	embryo               4.0      # 8.10

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c eina m pthread

MODULES =		converters/libiconv

LIB_DEPENDS =		x11/e17/eina>=1.7.10v1

CONFIGURE_ARGS =	--disable-doc

.include <bsd.port.mk>
