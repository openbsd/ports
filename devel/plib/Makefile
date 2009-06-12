# $OpenBSD: Makefile,v 1.4 2009/06/12 20:48:37 phessler Exp $

COMMENT =	suite of portable game libraries

DISTNAME =	plib-1.8.5
PKGNAME =	${DISTNAME}p1
CATEGORIES =	devel games

HOMEPAGE =	http://plib.sourceforge.net/
MASTER_SITES =	${HOMEPAGE}/dist/

MAINTAINER =	Gallon Sylvestre <ccna.syl@gmail.com>

# LGPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

USE_X11 =		Yes

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--with-GL=${X11BASE}

.include <bsd.port.mk>
