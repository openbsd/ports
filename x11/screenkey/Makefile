# $OpenBSD: Makefile,v 1.8 2021/11/02 00:03:00 sthen Exp $

COMMENT =		display keypresses on screen

MODPY_EGG_VERSION =	1.4
DISTNAME =		screenkey-${MODPY_EGG_VERSION}
REVISION =		0

CATEGORIES =		x11

HOMEPAGE =		https://www.thregr.org/~wavexx/software/screenkey/

MAINTAINER =		Laurence Tratt <laurie@tratt.net>

# GPLv3+
PERMIT_PACKAGE =	Yes

# dlopen()'d
WANTLIB =		X11 Xtst

MASTER_SITES =		https://www.thregr.org/~wavexx/software/screenkey/releases/

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes

BUILD_DEPENDS +=	devel/gettext,-tools \
			devel/py-babel${MODPY_FLAVOR} \
			devel/py-distutils-extra${MODPY_FLAVOR}
RUN_DEPENDS +=		devel/desktop-file-utils \
			devel/py-gobject3${MODPY_FLAVOR} \
			graphics/py-cairo${MODPY_FLAVOR} \
			x11/py-xlib${MODPY_FLAVOR}

NO_TEST =		Yes

.include <bsd.port.mk>
