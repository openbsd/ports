COMMENT=	platform independent file lock

MODPY_DISTV=	3.15.4
DISTNAME=	filelock-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
REVISION=	0

CATEGORIES=	sysutils

HOMEPAGE=	https://py-filelock.readthedocs.io/

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	hatch-vcs

TEST_DEPENDS=	devel/py-test-cov \
		devel/py-test-mock \
		devel/py-test-timeout \
		devel/py-virtualenv

.include <bsd.port.mk>
