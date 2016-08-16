# $OpenBSD: Makefile,v 1.16 2016/08/16 19:59:58 sthen Exp $

COMMENT=	python interface to libusb

MODPY_EGG_VERSION=	1.0.0
GH_ACCOUNT=	walac
GH_PROJECT=	pyusb
GH_TAGNAME=	${MODPY_EGG_VERSION}

CATEGORIES=	devel

HOMEPAGE=	http://walac.github.io/pyusb/

# BSD 3-clause
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ${MODPY_WANTLIB}
WANTLIB += pthread usb

MODULES=	lang/python

LIB_DEPENDS=	devel/libusb-compat \
		${MODPY_LIB_DEPENDS}

NO_TEST=	Yes

.include <bsd.port.mk>
