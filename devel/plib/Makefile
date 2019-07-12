# $OpenBSD: Makefile,v 1.13 2019/07/12 20:45:16 sthen Exp $

COMMENT =	suite of portable game libraries

DISTNAME =	plib-1.8.5
REVISION =	5
CATEGORIES =	devel games

HOMEPAGE =	http://plib.sourceforge.net/
#MASTER_SITES =	${HOMEPAGE}/dist/

MAINTAINER =	Gallon Sylvestre <ccna.syl@gmail.com>

# LGPLv2
PERMIT_PACKAGE =	Yes


CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--with-GL=${X11BASE}
USE_X11 =		Yes
CXXFLAGS +=		-fPIC

.include <bsd.port.mk>
