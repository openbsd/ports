# $OpenBSD: Makefile,v 1.10 2011/03/15 19:41:17 jasper Exp $

COMMENT =		C like scripting language used in E17

DISTNAME =		embryo-1.0.0

EPOCH =			2

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
