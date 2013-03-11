# $OpenBSD: Makefile,v 1.9 2013/03/11 11:37:55 espie Exp $

COMMENT =		desktop wiki

MODPY_EGG_VERSION =	0.56
DISTNAME =		zim-${MODPY_EGG_VERSION}

CATEGORIES =		productivity

HOMEPAGE =		http://zim-wiki.org/

MAINTAINER =		Sebastian Benoit <benoit-lists@fb12.de>

# GPL
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://zim-wiki.org/downloads/

NO_TEST =		Yes

MODULES =       	lang/python

BUILD_DEPENDS = 	${RUN_DEPENDS}
RUN_DEPENDS =		x11/py-gtk2 \
			devel/py-gobject \
			devel/py-xdg \
			devel/xdg-utils \
			x11/gtk+2,-guic

.include <bsd.port.mk>
