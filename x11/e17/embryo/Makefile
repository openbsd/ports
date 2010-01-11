# $OpenBSD: Makefile,v 1.6 2010/01/11 15:03:17 jasper Exp $

COMMENT =		C like scripting language used in E17

DISTNAME =		embryo-0.9.9.061
PKGNAME =		${DISTNAME}v0

SHARED_LIBS +=		embryo               0.0 \
			embryo-ver-svn-02    0.0

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB += 		c m

USE_LIBTOOL =		Yes

.include <bsd.port.mk>
