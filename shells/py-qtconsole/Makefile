# $OpenBSD: Makefile,v 1.9 2020/07/03 21:13:08 sthen Exp $

COMMENT =		Jupyter Qt console

MODPY_EGG_VERSION =	4.3.0
REVISION =		4
DISTNAME =		qtconsole-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		shells

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
FLAVOR =		python3

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} -m unittest discover

.include <bsd.port.mk>
