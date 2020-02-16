# $OpenBSD: Makefile,v 1.11 2020/02/16 05:20:29 bket Exp $

COMMENT =		Jupyter core package

MODPY_EGG_VERSION =	4.6.1
DISTNAME =		jupyter_core-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

HOMEPAGE =		https://jupyter.org/

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	jupyter_core

RUN_DEPENDS =		devel/py-traitlets${MODPY_FLAVOR}
TEST_DEPENDS =		devel/py-ipykernel${MODPY_FLAVOR} \
			devel/py-nose$(MODPY_FLAVOR)

FLAVORS =		python3
FLAVOR ?=

.if !${FLAVOR:Mpython3}
TEST_DEPENDS +=		devel/py-mock
.endif

PORTHOME =		${WRKDIR}

post-install:
	mv ${PREFIX}/bin/jupyter{,${MODPY_BIN_SUFFIX}}
	mv ${PREFIX}/bin/jupyter-migrate{,${MODPY_BIN_SUFFIX}}
	mv ${PREFIX}/bin/jupyter-troubleshoot{,${MODPY_BIN_SUFFIX}}

.include <bsd.port.mk>
