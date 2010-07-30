# $OpenBSD: Makefile,v 1.3 2010/07/30 06:58:58 ajacoutot Exp $

COMMENT =		EFL API for data types
DISTNAME =		eina-0.0.2.061
REVISION=		0

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

CONFIGURE_ARGS =	--disable-cpu-sse \
			--disable-cpu-sse2 \
			--disable-cpu-altivec

.include <bsd.port.mk>
