COMMENT =		tool to convert 2D (dxf, pdf, ps) files to gcode

MODPY_DISTV =		20191025
DISTNAME =		dxf2gcode-${MODPY_DISTV}
REVISION =		6

CATEGORIES =		cad

HOMEPAGE =		https://dxf2gcode.sourceforge.net/

MAINTAINER =		Tracey Emery <tracey@openbsd.org>

# GPLv3+
PERMIT_PACKAGE =	Yes

SITES =			${SITE_SOURCEFORGE:=dxf2gcode/}

EXTRACT_SUFX =		.zip

MODULES =		lang/python
MODPY_PYBUILD =		setuptools

BUILD_DEPENDS =		devel/py-configobj \
			graphics/py-opengl \
			x11/py-qt5
RUN_DEPENDS =		devel/desktop-file-utils \
			devel/py-configobj \
			graphics/py-opengl \
			print/poppler,-utils \
			x11/gtk+4,-guic \
			x11/py-qt5

NO_TEST =		Yes

do-configure:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${MODPY_BIN} ./make_tr.py
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${MODPY_BIN} ./make_py_uic.py
	mv ${WRKSRC}/st-setup.py ${WRKSRC}/setup.py

.include <bsd.port.mk>
