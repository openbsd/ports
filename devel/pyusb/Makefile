COMMENT=	python interface to libusb

MODPY_EGG_VERSION=	1.2.1
DISTNAME=	pyusb-${MODPY_EGG_VERSION}
PKGNAME=	${MODPY_PY_PREFIX}${DISTNAME}
REVISION=	0

CATEGORIES=	devel

HOMEPAGE=	https://pyusb.github.io/pyusb/

# BSD 3-clause
PERMIT_PACKAGE=	Yes

SITES=	https://github.com/pyusb/pyusb/releases/download/v${MODPY_EGG_VERSION}/

MODULES=	lang/python
MODPY_PYBUILD=	setuptools_scm

FLAVORS=	python3
FLAVOR=		python3

RUN_DEPENDS=	devel/libusb1

.include <bsd.port.mk>
