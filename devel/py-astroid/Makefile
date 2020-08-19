# $OpenBSD: Makefile,v 1.13 2020/08/19 12:25:12 ajacoutot Exp $

COMMENT =		common base representation of Python source code

MODPY_EGG_VERSION =	1.4.9
DISTNAME =		astroid-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel
REVISION =		4

HOMEPAGE =		http://www.astroid.org/

# LGPLv2.1+
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =		devel/py-lazy-object-proxy${MODPY_FLAVOR} \
			devel/py-six${MODPY_FLAVOR} \
			devel/py-wrapt${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR =		python3

do-test:
	cd ${WRKSRC} && \
	    ${MODPY_BIN} -m unittest discover -p "unittest*.py" -v

.include <bsd.port.mk>
