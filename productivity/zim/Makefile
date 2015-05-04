# $OpenBSD: Makefile,v 1.14 2015/05/04 19:28:16 benno Exp $

COMMENT =		desktop wiki

MODPY_EGG_VERSION =	0.62
DISTNAME =		zim-${MODPY_EGG_VERSION}

CATEGORIES =		productivity

HOMEPAGE =		http://zim-wiki.org/

MAINTAINER =		Sebastian Benoit <benno@openbsd.org>

# GPLv2+
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
			x11/gtk+3,-guic

.include <bsd.port.mk>
