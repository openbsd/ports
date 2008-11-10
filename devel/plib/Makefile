# $OpenBSD: Makefile,v 1.1.1.1 2008/11/10 22:10:22 ajacoutot Exp $

# needs joystick.h
ONLY_FOR_ARCHS =	i386

COMMENT =	suite of portable game librairies

DISTNAME =	plib-1.8.5
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
