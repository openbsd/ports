# $OpenBSD: Makefile,v 1.16 2013/01/27 15:57:29 rpe Exp $

COMMENT =		C like scripting language used in E17

DISTNAME =		embryo-1.7.5
EPOCH =			2

SHARED_LIBS +=		embryo 3.0 	# 8.5

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB += c eina m pthread

MODULES =		converters/libiconv

LIB_DEPENDS =		x11/e17/eina>=1.7.5v1

USE_LIBTOOL =		Yes

CONFIGURE_ARGS =	--disable-doc

.include <bsd.port.mk>
