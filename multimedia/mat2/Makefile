COMMENT =		remove metadata from media files

MODPY_DISTV =		0.15.0
REVISION =		0
GH_ACCOUNT =		jvoisin
GH_PROJECT =		mat2
GH_TAGNAME =		${MODPY_DISTV}
DISTNAME =		mat2-${MODPY_DISTV}

CATEGORIES =		multimedia

HOMEPAGE =		https://github.com/jvoisin/mat2

# GPLv3
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PYBUILD =		setuptools

# from pyproject.toml
RUN_DEPENDS =		audio/py-mutagen \
			devel/py-gobject3 \
			graphics/py-cairo
RUN_DEPENDS +=		graphics/ffmpeg \
			graphics/gdk-pixbuf2 \
			graphics/libimagequant \
			graphics/p5-Image-ExifTool \
			print/poppler \
			x11/gnome/librsvg

.include <bsd.port.mk>
