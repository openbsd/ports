COMMENT=	library to retrieve system information and utilisation

MODPY_DISTV=	6.1.1

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

post-install:
	rm -rf ${WRKINST}${MODPY_SITEPKG}/psutil/tests/

.include <bsd.port.mk>
