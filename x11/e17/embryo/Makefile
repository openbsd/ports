# $OpenBSD: Makefile,v 1.21 2013/12/06 13:16:45 dlg Exp $

COMMENT =		C like scripting language used in E17

DISTNAME =		embryo-1.7.9
EPOCH =			2

SHARED_LIBS +=	embryo               3.0      # 8.6

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c eina m pthread

MODULES =		converters/libiconv

LIB_DEPENDS =		x11/e17/eina>=1.7.9v1

CONFIGURE_ARGS =	--disable-doc

.include <bsd.port.mk>
