# $OpenBSD: Makefile,v 1.23 2016/09/13 19:15:03 naddy Exp $

COMMENT =		C like scripting language used in E17

DISTNAME =		embryo-1.7.10
EPOCH =			2

SHARED_LIBS +=	embryo               4.0      # 8.10

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c eina iconv m pthread

LIB_DEPENDS =		converters/libiconv \
			x11/e17/eina>=1.7.10v1

CONFIGURE_ARGS =	--disable-doc

.include <bsd.port.mk>
