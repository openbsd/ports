COMMENT=	python interface to libusb

MODPY_DISTV=	1.2.1
DISTNAME=	pyusb-${MODPY_DISTV}
PKGNAME=	${MODPY_PY_PREFIX}${DISTNAME}
REVISION=	1

CATEGORIES=	devel

HOMEPAGE=	https://pyusb.github.io/pyusb/

# BSD 3-clause
PERMIT_PACKAGE=	Yes

SITES=	https://github.com/pyusb/pyusb/releases/download/v${MODPY_DISTV}/

MODULES=	lang/python
MODPY_PYBUILD=	setuptools_scm

RUN_DEPENDS=	devel/libusb1

.include <bsd.port.mk>
