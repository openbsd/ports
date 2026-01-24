COMMENT=	metapackage for testing machinery used by Astropy

MODPY_DISTV=	0.11.0
DISTNAME=	pytest-astropy-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME:S/py//}
REVISION=	1

CATEGORIES=	devel

HOMEPAGE=	https://github.com/astropy/pytest-astropy

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools_scm
NO_TEST=	Yes

RUN_DEPENDS=	devel/py-test \
		devel/py-test-doctestplus \
		devel/py-test-remotedata \
		devel/py-test-astropy-header \
		devel/py-test-arraydiff \
		devel/py-test-filter-subpackage \
		devel/py-test-cov \
		devel/py-test-mock \
		devel/py-hypothesis

.include <bsd.port.mk>
