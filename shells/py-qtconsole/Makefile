# $OpenBSD: Makefile,v 1.3 2017/07/17 20:32:37 kili Exp $

COMMENT =		Jupyter Qt console

MODPY_EGG_VERSION =	4.3.0
DISTNAME =		qtconsole-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		shells

REVISION =		0

MAINTAINER =		Alexandr Shadchin <shadchin@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

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
TEST_DEPENDS =		${RUN_DEPENDS} \
			devel/py-nose${MODPY_FLAVOR}

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
