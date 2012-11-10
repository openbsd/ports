# $OpenBSD: Makefile,v 1.11 2012/11/10 15:01:15 stsp Exp $

COMMENT =		C like scripting language used in E17

DISTNAME =		embryo-1.7.1

EPOCH =			2

SHARED_LIBS +=		embryo 2.0 	# 8.1

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB += c eina iconv m pthread

LIB_DEPENDS =		x11/e17/eina>=2.0

USE_LIBTOOL =		Yes

CONFIGURE_ARGS =	--disable-doc

.include <bsd.port.mk>
