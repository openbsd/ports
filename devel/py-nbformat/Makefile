# $OpenBSD: Makefile,v 1.3 2017/01/03 19:19:48 landry Exp $

COMMENT =		Jupyter notebook format

MODPY_EGG_VERSION =	4.2.0
DISTNAME =		nbformat-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		devel

HOMEPAGE =		http://jupyter.org

MAINTAINER =		Alexandr Shadchin <shadchin@openbsd.org>

RUN_DEPENDS =		devel/py-ipython_genutils${MODPY_FLAVOR} \
			devel/py-traitlets${MODPY_FLAVOR} \
			devel/py-jupyter_core${MODPY_FLAVOR}>=4.2.1 \
			devel/py-jsonschema${MODPY_FLAVOR}
TEST_DEPENDS =		${RUN_DEPENDS} \
			devel/py-test${MODPY_FLAVOR} \
			devel/py-testpath${MODPY_FLAVOR}

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_PI =		Yes

FLAVORS =		python3
FLAVOR ?=

post-install:
	mv ${PREFIX}/bin/jupyter-trust ${PREFIX}/bin/jupyter-trust${MODPY_BIN_SUFFIX}

do-test:
	cd ${WRKSRC} && LC_CTYPE=en_US.UTF-8 ${MODPY_BIN} -m pytest nbformat

.include <bsd.port.mk>
