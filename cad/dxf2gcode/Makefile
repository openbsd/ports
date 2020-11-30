# $OpenBSD: Makefile,v 1.1.1.1 2020/11/30 15:10:22 tracey Exp $

COMMENT =		tool to convert 2D (dxf, pdf, ps) files to gcode

DISTNAME =		dxf2gcode-20191025

CATEGORIES =		cad

HOMEPAGE =		http://dxf2gcode.sourceforge.net/

MAINTAINER =		Tracey Emery <tracey@openbsd.org>

#GPLv3
PERMIT_PACKAGE = 	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=dxf2gcode/}

EXTRACT_SUFX =		.zip

MODULES =		lang/python

MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}

BUILD_DEPENDS =		devel/py-configobj${MODPY_FLAVOR} \
			graphics/py-opengl${MODPY_FLAVOR} \
			x11/py-qt5${MODPY_FLAVOR}
RUN_DEPENDS =		${BUILD_DEPENDS} \
			print/poppler,-utils \
			x11/py-qt5${MODPY_FLAVOR}

NO_TEST =		Yes

do-build:
# make files are looking for py3 packages, which have a -3 suffix
# workaround from sthen
.for i in pyuic pyrcc pylupdate
	ln -s ${LOCALBASE}/bin/$i5${MODPY_BIN_SUFFIX} ${WRKDIR}/bin/$i5
.endfor
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${MODPY_BIN} ./make_tr.py
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${MODPY_BIN} ./make_py_uic.py
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${MODPY_BIN} ./st-setup.py build

do-install:
	mkdir -p ${WRKINST}${MODPY_SITEPKG}
	cd ${WRKSRC} && ${MAKE_ENV} \
		PYTHONPATH=${WRKINST}${MODPY_SITEPKG} ${MODPY_BIN} \
		./st-setup.py install --prefix=${PREFIX}

.include <bsd.port.mk>
