# $OpenBSD: Makefile,v 1.14 2020/12/30 20:35:39 daniel Exp $

COMMENT =		common base representation of Python source code

MODPY_EGG_VERSION =	2.4.2
DISTNAME =		astroid-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel

# LGPLv2.1+
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

FLAVORS =		python3
FLAVOR  =		python3

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

BUILD_DEPENDS =		devel/py-test-runner${MODPY_FLAVOR}

RUN_DEPENDS =		devel/py-lazy-object-proxy${MODPY_FLAVOR}>=1.4 \
			devel/py-six${MODPY_FLAVOR} \
			devel/py-wrapt${MODPY_FLAVOR}>=1.11

do-test:
	cd ${WRKSRC} && \
	    ${MODPY_BIN} -m unittest discover -p "unittest*.py" -v

.include <bsd.port.mk>
