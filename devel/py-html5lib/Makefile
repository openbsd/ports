# $OpenBSD: Makefile,v 1.17 2019/05/09 21:13:26 danj Exp $

COMMENT=		HTML parser/tokeniser based for HTML5

MODPY_EGG_VERSION=	0.999999999
DISTNAME=		html5lib-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
CATEGORIES=		devel www textproc
REVISION=		1

HOMEPAGE=		https://github.com/html5lib/html5lib-python/

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

RUN_DEPENDS =		devel/py-six${MODPY_FLAVOR} \
			textproc/py-webencodings${MODPY_FLAVOR}
TEST_DEPENDS =		${RUN_DEPENDS} \
			devel/py-test-expect${MODPY_FLAVOR} \
			textproc/py-chardet${MODPY_FLAVOR} \
			textproc/py-lxml${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR ?=

.include <bsd.port.mk>
