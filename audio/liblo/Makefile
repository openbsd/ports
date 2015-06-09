# $OpenBSD: Makefile,v 1.8 2015/06/09 11:55:24 sthen Exp $

COMMENT =		leightweight open sound control (OSC) implementation
DISTNAME =		liblo-0.28
REVISION =		0

SHARED_LIBS +=  lo                   0.1      # 9.0
CATEGORIES =		audio
HOMEPAGE =		http://liblo.sourceforge.net/

# LGPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c m pthread
MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=liblo/}
BUILD_DEPENDS =		devel/doxygen
CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
