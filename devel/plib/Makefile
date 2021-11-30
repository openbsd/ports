# $OpenBSD: Makefile,v 1.15 2021/11/30 14:51:39 kirby Exp $

COMMENT =	suite of portable game libraries

DISTNAME =	plib-1.8.5
REVISION =	6
CATEGORIES =	devel games

HOMEPAGE =	http://plib.sourceforge.net/
MASTER_SITES =	${HOMEPAGE}/dist/

# LGPLv2
PERMIT_PACKAGE =	Yes


CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--with-GL=${X11BASE}
USE_X11 =		Yes
CXXFLAGS +=		-fPIC

.include <bsd.port.mk>
