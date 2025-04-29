COMMENT=	stateful programmatic web browsing module

MODPY_DISTV=	0.4.10
DISTNAME=	mechanize-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
REVISION=	2

CATEGORIES=	www

# https://github.com/python-mechanize/mechanize
HOMEPAGE=	https://mechanize.readthedocs.io/

# BSD or Zope Public License v2.1
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

RUN_DEPENDS=	www/py-html5-parser \
		devel/py-html5lib
TEST_DEPENDS=	devel/py-twisted

do-test:
	cd ${WRKSRC}; ${MODPY_BIN} run_tests.py

.include <bsd.port.mk>
