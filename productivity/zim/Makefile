# $OpenBSD: Makefile,v 1.11 2013/08/20 22:05:58 zhuk Exp $

COMMENT =		desktop wiki

MODPY_EGG_VERSION =	0.56
DISTNAME =		zim-${MODPY_EGG_VERSION}
REVISION =		1

CATEGORIES =		productivity

HOMEPAGE =		http://zim-wiki.org/

MAINTAINER =		Sebastian Benoit <benoit-lists@fb12.de>

# GPL
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://zim-wiki.org/downloads/

NO_TEST =		Yes

MODULES =       	lang/python

COMMON_DEPENDS =	x11/py-gtk2 \
			devel/py-gobject \
			devel/py-xdg \
			devel/xdg-utils

BUILD_DEPENDS = 	${COMMON_DEPENDS}

RUN_DEPENDS =		${COMMON_DEPENDS} \
			devel/desktop-file-utils \
			misc/shared-mime-info \
			x11/gtk+2,-guic

.include <bsd.port.mk>
