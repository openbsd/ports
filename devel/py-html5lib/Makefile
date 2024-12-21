COMMENT=		HTML parser/tokeniser based for HTML5

MODPY_DISTV=	1.1
DISTNAME=		html5lib-${MODPY_DISTV}
PKGNAME=		py-${DISTNAME}
CATEGORIES=		devel www textproc
REVISION=		4

HOMEPAGE=		https://github.com/html5lib/html5lib-python/

# MIT
PERMIT_PACKAGE=		Yes

MODULES=		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

RUN_DEPENDS =		devel/py-six \
			textproc/py-webencodings
TEST_DEPENDS =		devel/py-mock \
			devel/py-test-expect \
			textproc/py-chardet \
			textproc/py-lxml

.include <bsd.port.mk>
