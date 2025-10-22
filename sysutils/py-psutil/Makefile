COMMENT=	library to retrieve system information and utilisation

MODPY_DISTV=	7.1.1
DISTNAME=	psutil-${MODPY_DISTV}
PKGNAME=	py-psutil-${MODPY_DISTV}
CATEGORIES=	sysutils

HOMEPAGE=	https://github.com/giampaolo/psutil

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB += kvm

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

MODPY_TEST_LINK_SO= Yes

TEST_DEPENDS=	devel/py-test-instafail \
		devel/py-test-subtests \
		devel/py-test-xdist

.include <bsd.port.mk>
