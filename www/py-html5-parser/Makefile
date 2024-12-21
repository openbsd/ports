COMMENT=	fast C based HTML 5 parsing for python

MODPY_DISTV=	0.4.12

DISTNAME=	html5-parser-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
REVISION=	0

CATEGORIES=	www

HOMEPAGE=	https://html5-parser.readthedocs.io

# Apache 2.0
PERMIT_PACKAGE=	Yes

WANTLIB += pthread xml2

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools
MODPY_PYTEST_ARGS= test/*py

LIB_DEPENDS=	textproc/libxml

RUN_DEPENDS=	textproc/py-chardet \
		textproc/py-lxml

TEST_DEPENDS=	www/py-beautifulsoup4

.include <bsd.port.mk>
