COMMENT =		remove metadata from media files

MODPY_EGG_VERSION =	0.13.4
DISTNAME =		mat2-${MODPY_EGG_VERSION}

CATEGORIES =		multimedia

HOMEPAGE =		https://0xacab.org/jvoisin/mat2

MAINTAINER =		Jag Talon <jag@aangat.lahat.computer>

# GPLv3
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

RUN_DEPENDS =		audio/py-mutagen${MODPY_FLAVOR} \
			devel/py-gobject3${MODPY_FLAVOR} \
			graphics/ffmpeg \
			graphics/gdk-pixbuf2 \
			graphics/libimagequant \
			graphics/p5-Image-ExifTool \
			print/poppler \
			x11/gnome/librsvg

# Test files aren't available in PyPI
NO_TEST =		Yes

.include <bsd.port.mk>
