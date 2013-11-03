# $OpenBSD: Makefile,v 1.11 2013/11/03 07:52:02 ajacoutot Exp $

COMMENT =	suite of portable game libraries

DISTNAME =	plib-1.8.5
REVISION =	4
CATEGORIES =	devel games

HOMEPAGE =	http://plib.sourceforge.net/
MASTER_SITES =	${HOMEPAGE}/dist/

MAINTAINER =	Gallon Sylvestre <ccna.syl@gmail.com>

# LGPLv2
PERMIT_PACKAGE_CDROM =	Yes


CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--with-GL=${X11BASE}
USE_X11 =		Yes

.include <bsd.port.mk>
