# $OpenBSD: Makefile,v 1.21 2020/07/03 21:12:53 sthen Exp $

COMMENT=	python interface to libusb

GH_PROJECT =	pyusb
GH_ACCOUNT =	pyusb
GH_COMMIT =	bf88211d65caf01b903005efae7f0915a53a8c4e
MODPY_EGG_VERSION=	1.0.2
DISTNAME=	pyusb-${MODPY_EGG_VERSION}
PKGNAME=	${MODPY_PY_PREFIX}${DISTNAME}
REVISION =	2

CATEGORIES=	devel

HOMEPAGE=	https://pyusb.github.io/pyusb/

# BSD 3-clause
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_SETUPTOOLS=	Yes

FLAVORS=	python3
FLAVOR?=

RUN_DEPENDS =	devel/libusb1

NO_TEST=	Yes

.include <bsd.port.mk>
