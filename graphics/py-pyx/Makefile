COMMENT =	package for creating PostScript/PDF graphics

MODPY_EGG_VERSION = 0.15
DISTNAME =	PyX-${MODPY_EGG_VERSION}
PKGNAME =	py-pyx-${MODPY_EGG_VERSION}
CATEGORIES =	graphics devel
REVISION =	1

HOMEPAGE =	http://pyx.sourceforge.net/

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB +=	${MODPY_WANTLIB} pthread

MODULES =	lang/python

FLAVORS =	python3
FLAVOR  =	python3

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =	print/texlive/base \
		graphics/py-Pillow${MODPY_FLAVOR}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/py-pyx
	cd ${WRKSRC}/examples && pax -rw * ${PREFIX}/share/examples/py-pyx

do-test: fake
	cd ${WRKSRC}/examples && for i in `find . -name "*.py"`; do \
		echo $$i; \
		cd ${WRKSRC}/examples/`dirname $$i`; \
		PYTHONPATH=${WRKINST}${MODPY_SITEPKG} ${MODPY_BIN} `basename $$i`; \
	done

.include <bsd.port.mk>
