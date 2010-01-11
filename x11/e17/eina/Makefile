# $OpenBSD: Makefile,v 1.1.1.1 2010/01/11 15:06:39 jasper Exp $

COMMENT =		EFL API for data types
DISTNAME =		eina-0.0.2.061

SHARED_LIBS +=  eina                 0.0 \
		eina-ver-svn-02      0.0

# LGPL v2.1
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		m

USE_LIBTOOL =		Yes

CONFIGURE_STYLE =       gnu
CONFIGURE_ARGS +=	--disable-pthread

.include <bsd.port.mk>
