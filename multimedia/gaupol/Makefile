# $OpenBSD: Makefile,v 1.2 2021/11/02 00:01:38 sthen Exp $

COMMENT =	editor for text-based subtitle files

MODPY_EGG_VERSION =	1.9
GH_ACCOUNT =	otsaloma
GH_PROJECT =	gaupol
GH_TAGNAME =	${MODPY_EGG_VERSION}
REVISION =	0

CATEGORIES =	multimedia

MAINTAINER =	Anindya Mukherjee <anindya49@hotmail.com>

HOMEPAGE =	https://otsaloma.io/gaupol/

# GPLv3
PERMIT_PACKAGE =	Yes

MODULES =	lang/python

MODPY_SETUP_ARGS =	"--mandir=man"

BUILD_DEPENDS =	devel/gettext,-tools
RUN_DEPENDS =	devel/iso-codes \
		devel/desktop-file-utils \
		devel/py-gobject3${MODPY_FLAVOR} \
		graphics/py-cairo${MODPY_FLAVOR} \
		multimedia/gstreamer1/plugins-bad \
		multimedia/gstreamer1/plugins-base \
		multimedia/gstreamer1/plugins-good \
		multimedia/gstreamer1/plugins-libav \
		multimedia/gstreamer1/plugins-ugly \
		multimedia/mpv \
		textproc/gspell \
		textproc/py-chardet${MODPY_FLAVOR} \
		x11/gtk+3,-guic \
		x11/hicolor-icon-theme

NO_TEST =	Yes

.include <bsd.port.mk>
