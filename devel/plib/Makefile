# $OpenBSD: Makefile,v 1.14 2019/07/17 14:49:21 danj Exp $

COMMENT =	suite of portable game libraries

DISTNAME =	plib-1.8.5
REVISION =	6
CATEGORIES =	devel games

HOMEPAGE =	http://plib.sourceforge.net/
#MASTER_SITES =	${HOMEPAGE}/dist/

# LGPLv2
PERMIT_PACKAGE =	Yes


CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--with-GL=${X11BASE}
USE_X11 =		Yes
CXXFLAGS +=		-fPIC

.include <bsd.port.mk>
