# $OpenBSD: Makefile,v 1.12 2015/05/25 13:18:24 ajacoutot Exp $

COMMENT =	suite of portable game libraries

DISTNAME =	plib-1.8.5
REVISION =	5
CATEGORIES =	devel games

HOMEPAGE =	http://plib.sourceforge.net/
#MASTER_SITES =	${HOMEPAGE}/dist/

MAINTAINER =	Gallon Sylvestre <ccna.syl@gmail.com>

# LGPLv2
PERMIT_PACKAGE_CDROM =	Yes


CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--with-GL=${X11BASE}
USE_X11 =		Yes
CXXFLAGS +=		-fPIC

.include <bsd.port.mk>
