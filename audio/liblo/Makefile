# $OpenBSD: Makefile,v 1.3 2012/08/17 07:11:39 jasper Exp $

COMMENT =		leightweight open sound control (OSC) implementation
DISTNAME =		liblo-0.26
SHARED_LIBS +=  lo                   0.0      # 7.0
CATEGORIES =		audio
HOMEPAGE =		http://liblo.sourceforge.net/
REVISION =		1

# LGPLv2+
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		c m pthread
MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=liblo/}
BUILD_DEPENDS =		devel/doxygen
USE_LIBTOOL =		Yes
CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
