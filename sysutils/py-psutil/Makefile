COMMENT=	library to retrieve system information and utilisation

MODPY_EGG_VERSION=	5.9.8

DISTNAME=	psutil-${MODPY_EGG_VERSION}
PKGNAME=	py-psutil-${MODPY_EGG_VERSION}
CATEGORIES=	sysutils
REVISION=	0

HOMEPAGE=	https://github.com/giampaolo/psutil

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB += kvm

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

FLAVORS=	python3
FLAVOR=		python3

MODPY_TEST_DIR=	${WRKSRC}/build/lib.openbsd-${OSREV}-${ARCH}-cpython-${MODPY_MAJORMINOR}

.include <bsd.port.mk>
