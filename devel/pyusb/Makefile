# $OpenBSD: Makefile,v 1.19 2020/02/17 17:47:05 jasper Exp $

COMMENT=	python interface to libusb

MODPY_EGG_VERSION=	1.0.2
DISTNAME=	pyusb-${MODPY_EGG_VERSION}
PKGNAME=	${MODPY_PY_PREFIX}${DISTNAME}
REVISION =	0

CATEGORIES=	devel

HOMEPAGE=	https://pyusb.github.io/pyusb/

# BSD 3-clause
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_SETUPTOOLS=	Yes

FLAVORS=	python3
FLAVOR?=

RUN_DEPENDS =	devel/libusb1

NO_TEST=	Yes

.include <bsd.port.mk>
