# $OpenBSD: Makefile,v 1.13 2012/12/24 13:11:03 stsp Exp $

COMMENT =		C like scripting language used in E17

DISTNAME =		embryo-1.7.4

EPOCH =			2

SHARED_LIBS +=		embryo 3.0 	# 8.4

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB += c eina m pthread

MODULES =		converters/libiconv

LIB_DEPENDS =		x11/e17/eina>=3.0

USE_LIBTOOL =		Yes

CONFIGURE_ARGS =	--disable-doc

.include <bsd.port.mk>
