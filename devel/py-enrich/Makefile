COMMENT=	extends Python Rich library functionality

# 1.3.0 on github but not pypi yet, setuptools_scm doesn't like GH_* archives
MODPY_DISTV=	1.2.7
DISTNAME=	enrich-${MODPY_DISTV}
PKGNAME=	py-enrich-${MODPY_DISTV}
REVISION=	4

HOMEPAGE=	https://github.com/pycontribs/enrich

CATEGORIES=	devel

# MIT
PERMIT_PACKAGE=Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools_scm
MODPY_PI=	Yes

RUN_DEPENDS=	devel/py-rich
TEST_DEPENDS=	devel/py-test-mock

.include <bsd.port.mk>
