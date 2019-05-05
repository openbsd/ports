# $OpenBSD: Makefile,v 1.8 2019/05/05 15:44:12 danj Exp $

COMMENT =		Jupyter core package

MODPY_EGG_VERSION =	4.4.0
DISTNAME =		jupyter_core-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		1

CATEGORIES =		devel

HOMEPAGE =		https://jupyter.org/

RUN_DEPENDS =		devel/py-traitlets${MODPY_FLAVOR}
TEST_DEPENDS =		${RUN_DEPENDS} \
			devel/ipython${MODPY_FLAVOR}>=5.1.0 \
			devel/py-ipykernel${MODPY_FLAVOR}>=4.5.2

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	jupyter_core
PORTHOME =		${WRKDIR}

FLAVORS =		python3
FLAVOR ?=

.if !${FLAVOR:Mpython3}
TEST_DEPENDS +=		devel/py-mock
.endif

post-install:
	mv ${PREFIX}/bin/jupyter{,${MODPY_BIN_SUFFIX}}
	mv ${PREFIX}/bin/jupyter-migrate{,${MODPY_BIN_SUFFIX}}
	mv ${PREFIX}/bin/jupyter-troubleshoot{,${MODPY_BIN_SUFFIX}}

.include <bsd.port.mk>
