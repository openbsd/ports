COMMENT =		tool to convert 2D (dxf, pdf, ps) files to gcode

DISTNAME =		dxf2gcode-20191025
REVISION =		1

CATEGORIES =		cad

HOMEPAGE =		http://dxf2gcode.sourceforge.net/

MAINTAINER =		Tracey Emery <tracey@openbsd.org>

#GPLv3
PERMIT_PACKAGE = 	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=dxf2gcode/}

EXTRACT_SUFX =		.zip

MODULES =		lang/python

BUILD_DEPENDS =		devel/py-configobj${MODPY_FLAVOR} \
			graphics/py-opengl${MODPY_FLAVOR} \
			x11/py-qt5${MODPY_FLAVOR}
# uses py-setuptools, but it isn't a typical setuptools port.
BUILD_DEPENDS +=	devel/py-setuptools${MODPY_FLAVOR}
RUN_DEPENDS =		${BUILD_DEPENDS} \
			print/poppler,-utils \
			x11/py-qt5${MODPY_FLAVOR}

NO_TEST =		Yes

do-build:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${MODPY_BIN} ./make_tr.py
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${MODPY_BIN} ./make_py_uic.py
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${MODPY_BIN} ./st-setup.py build

do-install:
	mkdir -p ${WRKINST}${MODPY_SITEPKG}
	cd ${WRKSRC} && ${MAKE_ENV} \
		PYTHONPATH=${WRKINST}${MODPY_SITEPKG} ${MODPY_BIN} \
		./st-setup.py install --prefix=${PREFIX}

.include <bsd.port.mk>
