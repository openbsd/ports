COMMENT =	package for creating PostScript/PDF graphics

MODPY_DISTV =	0.16
DISTNAME =	PyX-${MODPY_DISTV}
PKGNAME =	py-pyx-${MODPY_DISTV}
CATEGORIES =	graphics devel
REVISION =	4

HOMEPAGE =	https://pyx.sourceforge.net/

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB +=	${MODPY_WANTLIB} pthread

MODULES =	lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

RUN_DEPENDS =	print/texlive/base \
		graphics/py-Pillow

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
