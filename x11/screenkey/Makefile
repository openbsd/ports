# $OpenBSD: Makefile,v 1.6 2021/02/23 19:39:52 sthen Exp $

COMMENT =		display keypresses on screen

DISTNAME =		screenkey-1.2
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
			devel/py-distutils-extra${MODPY_FLAVOR}
RUN_DEPENDS +=		devel/desktop-file-utils \
			devel/py-gobject3${MODPY_FLAVOR} \
			graphics/py-cairo${MODPY_FLAVOR} \
			x11/py-xlib${MODPY_FLAVOR}

NO_TEST =		Yes

.include <bsd.port.mk>
