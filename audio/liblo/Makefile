# $OpenBSD: Makefile,v 1.5 2013/03/21 08:45:12 ajacoutot Exp $

COMMENT =		leightweight open sound control (OSC) implementation
DISTNAME =		liblo-0.26
SHARED_LIBS +=  lo                   0.0      # 7.0
CATEGORIES =		audio
HOMEPAGE =		http://liblo.sourceforge.net/
REVISION =		1

# LGPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c m pthread
MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=liblo/}
BUILD_DEPENDS =		devel/doxygen
CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
