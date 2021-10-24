# $OpenBSD: Makefile,v 1.22 2021/10/24 09:28:47 sthen Exp $

COMMENT=		HTML parser/tokeniser based for HTML5

MODPY_EGG_VERSION=	1.0.1
DISTNAME=		html5lib-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
CATEGORIES=		devel www textproc
REVISION=		2

HOMEPAGE=		https://github.com/html5lib/html5lib-python/

# MIT
PERMIT_PACKAGE=		Yes

MODULES=		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

RUN_DEPENDS =		devel/py-six${MODPY_FLAVOR} \
			textproc/py-webencodings${MODPY_FLAVOR}
TEST_DEPENDS =		devel/py-mock${MODPY_FLAVOR} \
			devel/py-test-expect${MODPY_FLAVOR} \
			textproc/py-chardet${MODPY_FLAVOR} \
			textproc/py-lxml${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR =		python3

.include <bsd.port.mk>
