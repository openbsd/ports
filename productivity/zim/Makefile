# $OpenBSD: Makefile,v 1.4 2011/06/08 17:37:46 jasper Exp $

COMMENT =		desktop wiki

MODPY_EGG_VERSION =	0.52
DISTNAME =		zim-${MODPY_EGG_VERSION}
REVISION =		0

CATEGORIES =		productivity

HOMEPAGE = 		http://zim-wiki.org/

MAINTAINER =		Sebastian Benoit <benoit-lists@fb12.de>

# GPL
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		http://zim-wiki.org/downloads/

NO_REGRESS =		Yes

MODULES =       	lang/python

BUILD_DEPENDS = 	${RUN_DEPENDS}
RUN_DEPENDS =		x11/py-gtk2 \
			devel/py-gobject \
			devel/py-xdg \
			devel/xdg-utils

.include <bsd.port.mk>
