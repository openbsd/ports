# $OpenBSD: Makefile,v 1.26 2020/06/12 04:43:27 kn Exp $

COMMENT =		python documentation generator

MODPY_EGG_VERSION =	1.4.8
DISTNAME =		Sphinx-${MODPY_EGG_VERSION}
PKGNAME =		py-sphinx-${MODPY_EGG_VERSION}
REVISION =		2

CATEGORIES =		textproc

HOMEPAGE =		http://sphinx-doc.org/


# BSD
PERMIT_PACKAGE =	Yes

MODPY_PI =		Yes

MODULES =		lang/python
RUN_DEPENDS =		devel/py-babel${MODPY_FLAVOR} \
			devel/py-six${MODPY_FLAVOR} \
			graphics/py-imagesize${MODPY_FLAVOR} \
			textproc/py-alabaster${MODPY_FLAVOR} \
			textproc/py-docutils${MODPY_FLAVOR} \
			textproc/py-pygments${MODPY_FLAVOR} \
			textproc/py-sphinx_rtd_theme${MODPY_FLAVOR} \
			textproc/py-snowballstemmer${MODPY_FLAVOR} \
			www/py-jinja2${MODPY_FLAVOR}
BUILD_DEPENDS =		${RUN_DEPENDS}
TEST_DEPENDS =		devel/py-mock${MODPY_FLAVOR} \
			devel/py-nose${MODPY_FLAVOR} \
			print/texlive/texmf,-full

MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

post-build:
	cd ${WRKSRC} && ${MAKE_ENV} PYTHONPATH=${WRKSRC} \
		${MODPY_BIN} sphinx-build.py doc doc/_build/html

DOCS =		${PREFIX}/share/doc/${MODPY_PY_PREFIX}sphinx

post-install:
	${INSTALL_DATA_DIR} ${DOCS}
	cd ${WRKSRC}/doc/_build/html && pax -rw * ${DOCS}
	for i in ${PREFIX}/bin/*; do \
		mv $${i} $${i}${MODPY_BIN_SUFFIX} ;\
	done

do-test:
	cd ${WRKSRC} && env SPHINX_TEST_TEMPDIR=${WRKDIR} \
	    ${LOCALBASE}/bin/nosetests${MODPY_BIN_SUFFIX} --first-package-wins

.include <bsd.port.mk>
