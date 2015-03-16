# $OpenBSD: Makefile,v 1.6 2015/03/16 18:07:36 naddy Exp $

COMMENT =		leightweight open sound control (OSC) implementation
DISTNAME =		liblo-0.26
SHARED_LIBS +=  lo                   0.0      # 7.0
CATEGORIES =		audio
HOMEPAGE =		http://liblo.sourceforge.net/
REVISION =		2

# LGPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c m pthread
MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=liblo/}
BUILD_DEPENDS =		devel/doxygen
CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
