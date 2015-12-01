# $OpenBSD: Makefile,v 1.1.1.1 2015/12/01 22:22:28 edd Exp $

COMMENT =		Jupyter notebook format

MODPY_EGG_VERSION =	4.0.0
DISTNAME =		nbformat-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

HOMEPAGE =		http://jupyter.org

RUN_DEPENDS =		devel/py-ipython_genutils \
			devel/py-traitlets \
			devel/py-jupyter_core \
			devel/py-jsonschema
TEST_DEPENDS =		${RUN_DEPENDS} \
			devel/py-nose

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_PI =		Yes

do-test:
	cd ${WRKSRC}; ${LOCALBASE}/bin/nosetests nbformat

.include <bsd.port.mk>
