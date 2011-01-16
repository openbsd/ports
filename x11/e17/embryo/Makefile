# $OpenBSD: Makefile,v 1.9 2011/01/16 10:39:25 jasper Exp $

COMMENT =		C like scripting language used in E17

DISTNAME =		embryo-1.0.0.beta2

EPOCH =			1

SHARED_LIBS +=		embryo 1.0

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB += c m

USE_LIBTOOL =		Yes

CONFIGURE_ARGS =	--disable-doc

.include <bsd.port.mk>
