# $OpenBSD: Makefile,v 1.7 2019/07/12 20:49:38 sthen Exp $

COMMENT =		Jupyter Qt console

MODPY_EGG_VERSION =	4.3.0
DISTNAME =		qtconsole-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		shells

REVISION =		2

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes

RUN_DEPENDS =		devel/ipython${MODPY_FLAVOR}>=5.1.0 \
			devel/py-ipykernel${MODPY_FLAVOR} \
			devel/py-jupyter_client${MODPY_FLAVOR} \
			devel/py-jupyter_core${MODPY_FLAVOR} \
			devel/py-pexpect${MODPY_FLAVOR} \
			devel/py-traitlets${MODPY_FLAVOR} \
			textproc/py-pygments${MODPY_FLAVOR} \
			x11/py-qt5${MODPY_FLAVOR}
TEST_DEPENDS =		devel/py-nose${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR ?=

.if !${FLAVOR:Mpython3}
TEST_DEPENDS +=		devel/py-mock
.endif

post-install:
	mv ${PREFIX}/bin/jupyter-qtconsole{,${MODPY_BIN_SUFFIX}}

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} -m unittest discover

.include <bsd.port.mk>
