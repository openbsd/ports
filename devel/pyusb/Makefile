# $OpenBSD: Makefile,v 1.18 2019/10/29 05:48:38 kmos Exp $

COMMENT=	python interface to libusb
MODPY_EGG_VERSION=	1.0.2
DISTNAME=	pyusb-${MODPY_EGG_VERSION}
PKGNAME=	${MODPY_PY_PREFIX}${DISTNAME}

CATEGORIES=	devel

HOMEPAGE=	https://pyusb.github.io/pyusb/

# BSD 3-clause
PERMIT_PACKAGE=	Yes

WANTLIB += ${MODPY_WANTLIB}
WANTLIB += pthread usb

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_SETUPTOOLS=	Yes

FLAVORS=	python3
FLAVOR?=

LIB_DEPENDS=	devel/libusb-compat \
		${MODPY_LIB_DEPENDS}

NO_TEST=	Yes

.include <bsd.port.mk>
