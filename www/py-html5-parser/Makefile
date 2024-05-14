COMMENT=	fast C based HTML 5 parsing for python

MODPY_EGG_VERSION=	0.4.12

DISTNAME=	html5-parser-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	www

HOMEPAGE=	https://html5-parser.readthedocs.io

# Apache 2.0
PERMIT_PACKAGE=	Yes

FLAVORS=	python3
FLAVOR=		python3

WANTLIB += pthread xml2

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools
MODPY_PYTEST_ARGS= test/*py

LIB_DEPENDS=	textproc/libxml

RUN_DEPENDS=	textproc/py-chardet${MODPY_FLAVOR} \
		textproc/py-lxml${MODPY_FLAVOR}

TEST_DEPENDS=	www/py-beautifulsoup4${MODPY_FLAVOR}

.include <bsd.port.mk>
