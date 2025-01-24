COMMENT =	editor for text-based subtitle files

MODPY_DISTV =	1.10.1
GH_ACCOUNT =	otsaloma
GH_PROJECT =	gaupol
GH_TAGNAME =	${MODPY_DISTV}
REVISION =	6

CATEGORIES =	multimedia

MAINTAINER =	Anindya Mukherjee <anindya49@hotmail.com>

HOMEPAGE =	https://otsaloma.io/gaupol/

# GPLv3
PERMIT_PACKAGE =	Yes

MODULES =	lang/python
MODPY_PYBUILD =	setuptools

BUILD_DEPENDS =	devel/gettext,-tools
RUN_DEPENDS =	devel/iso-codes \
		devel/desktop-file-utils \
		devel/py-gobject3 \
		graphics/py-cairo \
		multimedia/gstreamer1/plugins-bad \
		multimedia/gstreamer1/plugins-base \
		multimedia/gstreamer1/plugins-good \
		multimedia/gstreamer1/plugins-libav \
		multimedia/gstreamer1/plugins-ugly \
		multimedia/mpv \
		textproc/gspell \
		textproc/py-chardet \
		x11/gtk+4,-guic \
		x11/hicolor-icon-theme

NO_TEST =	Yes

post-install:
	mv ${PREFIX}/share/man/man1/* ${PREFIX}/man/man1/
	rmdir ${PREFIX}/share/man{/man1,}

.include <bsd.port.mk>
