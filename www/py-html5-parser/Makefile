# $OpenBSD: Makefile,v 1.3 2021/11/02 00:02:53 sthen Exp $

COMMENT =	fast C based HTML 5 parsing for python

MODPY_EGG_VERSION =	0.4.10

DISTNAME =	html5-parser-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	0

CATEGORIES =	www

HOMEPAGE =	https://html5-parser.readthedocs.io

# Apache 2.0
PERMIT_PACKAGE =	Yes

FLAVORS =	python3
FLAVOR =	python3

WANTLIB += pthread xml2

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	test/*py

TEST_ENV +=		PYTHONPATH=${WRKSRC}/lib.openbsd-${OSREV}-${ARCH}-${MODPY_VERSION}/

LIB_DEPENDS =		textproc/libxml

RUN_DEPENDS =		textproc/py-chardet${MODPY_FLAVOR} \
			textproc/py-lxml${MODPY_FLAVOR}

TEST_DEPENDS =		www/py-beautifulsoup4${MODPY_FLAVOR}

.include <bsd.port.mk>
