# $OpenBSD: Makefile,v 1.1.1.1 2010/12/27 12:05:13 rpointel Exp $

COMMENT =		desktop wiki

MODPY_EGG_VERSION =	0.49
DISTNAME =		zim-${MODPY_EGG_VERSION}

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

RUN_DEPENDS =		x11/py-gtk2 \
			devel/py-gobject \
			devel/py-xdg \
			devel/xdg-utils

.include <bsd.port.mk>
