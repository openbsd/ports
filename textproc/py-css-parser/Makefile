COMMENT=	Python package for parsing and building CSS

CATEGORIES=	textproc

MODPY_DISTV=	1.1.1
DISTNAME=	css_parser-${MODPY_DISTV}
PKGNAME=	py-css-parser-${MODPY_DISTV}

# https://github.com/ebook-utils/css-parser
# https://cssutils.readthedocs.io/en/latest/history.html
HOMEPAGE=	https://cssutils.readthedocs.io/

# GPLv3
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

RUN_DEPENDS=	textproc/py-chardet
TEST_DEPENDS=	devel/py-jaraco-test

.include <bsd.port.mk>
