# $OpenBSD: Makefile,v 1.9 2012/10/29 15:19:03 espie Exp $

COMMENT =	suite of portable game libraries

DISTNAME =	plib-1.8.5
REVISION =	3
CATEGORIES =	devel games

HOMEPAGE =	http://plib.sourceforge.net/
MASTER_SITES =	${HOMEPAGE}/dist/

MAINTAINER =	Gallon Sylvestre <ccna.syl@gmail.com>

# LGPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes


CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--with-GL=${X11BASE}
USE_X11 =		Yes

.include <bsd.port.mk>
