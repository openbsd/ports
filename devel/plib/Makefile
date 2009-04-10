# $OpenBSD: Makefile,v 1.3 2009/04/10 08:54:32 simon Exp $

# needs joystick.h
ONLY_FOR_ARCHS =	i386

COMMENT =	suite of portable game libraries

DISTNAME =	plib-1.8.5
PKGNAME =	${DISTNAME}p0
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
