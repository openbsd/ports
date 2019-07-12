# $OpenBSD: Makefile,v 1.24 2019/07/12 20:51:10 sthen Exp $

COMMENT =		C like scripting language used in E17

DISTNAME =		embryo-1.7.10
EPOCH =			2

SHARED_LIBS +=	embryo               4.0      # 8.10

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += c eina iconv m pthread

LIB_DEPENDS =		converters/libiconv \
			x11/e17/eina>=1.7.10v1

CONFIGURE_ARGS =	--disable-doc

.include <bsd.port.mk>
