COMMENT=	fast C based HTML 5 parsing for python

MODPY_DISTV=	0.5.0
DISTNAME=	html5_parser-${MODPY_DISTV}
PKGNAME=	py-html5-parser-${MODPY_DISTV}

CATEGORIES=	www

# https://github.com/kovidgoyal/html5-parser
HOMEPAGE=	https://html5-parser.readthedocs.io

# Apache 2.0
PERMIT_PACKAGE=	Yes

WANTLIB += pthread xml2

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

MODPY_PYTEST_ARGS= test/*py

LIB_DEPENDS=	textproc/libxml

RUN_DEPENDS=	textproc/py-chardet \
		textproc/py-lxml

TEST_DEPENDS=	www/py-beautifulsoup4

.include <bsd.port.mk>
