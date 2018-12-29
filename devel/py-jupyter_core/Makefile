# $OpenBSD: Makefile,v 1.5 2018/12/29 11:50:34 mariani Exp $

COMMENT =		Jupyter core package

MODPY_EGG_VERSION =	4.4.0
DISTNAME =		jupyter_core-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

HOMEPAGE =		https://jupyter.org/

MAINTAINER =		Elias M. Mariani <marianielias@gmail.com>

RUN_DEPENDS =		devel/py-traitlets${MODPY_FLAVOR}
TEST_DEPENDS =		${RUN_DEPENDS} \
			devel/ipython${MODPY_FLAVOR}>=5.1.0 \
			devel/py-ipykernel${MODPY_FLAVOR}>=4.5.2 \
			devel/py-test${MODPY_FLAVOR}

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

.if !${FLAVOR:Mpython3}
TEST_DEPENDS +=		devel/py-mock
.endif

post-install:
	mv ${PREFIX}/bin/jupyter{,${MODPY_BIN_SUFFIX}}
	mv ${PREFIX}/bin/jupyter-migrate{,${MODPY_BIN_SUFFIX}}
	mv ${PREFIX}/bin/jupyter-troubleshoot{,${MODPY_BIN_SUFFIX}}

do-test:
	cd ${WRKSRC} && LC_CTYPE=en_US.UTF-8 ${MODPY_BIN} -m pytest jupyter_core

.include <bsd.port.mk>
