# $OpenBSD: Makefile,v 1.8 2019/05/13 19:03:53 danj Exp $

COMMENT =		Sphinx extension to support docstrings in Numpy format

MODPY_EGG_VERSION =	0.7.0
DISTNAME =		numpydoc-${MODPY_EGG_VERSION}
PKGNAME =		py-numpydoc-${MODPY_EGG_VERSION}
CATEGORIES =		textproc devel
HOMEPAGE =		https://github.com/numpy/numpydoc
REVISION =		1

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_PI =		Yes

FLAVORS =		python3
FLAVOR ?=

RUN_DEPENDS =		graphics/py-matplotlib${MODPY_FLAVOR} \
			textproc/py-sphinx${MODPY_FLAVOR} \
			www/py-jinja2${MODPY_FLAVOR}

TEST_DEPENDS =		${RUN_DEPENDS} \
			devel/py-nose${MODPY_FLAVOR}

do-test:
	cd ${WRKSRC} && \
		${LOCALBASE}/bin/nosetests${MODPY_BIN_SUFFIX} --first-package-wins

.include <bsd.port.mk>
