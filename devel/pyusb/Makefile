# $OpenBSD: Makefile,v 1.14 2015/04/21 18:33:49 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	python interface to libusb

MODPY_EGG_VERSION=	0.4.3
DISTNAME=	pyusb-${MODPY_EGG_VERSION}
REVISION=	0

CATEGORIES=	devel

HOMEPAGE=	http://walac.github.io/pyusb/

# BSD 3-clause
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ${MODPY_WANTLIB}
WANTLIB += pthread usb

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=pyusb/}

MODULES=	lang/python

LIB_DEPENDS=	devel/libusb-compat \
		${MODPY_LIB_DEPENDS}

NO_TEST=	Yes

pre-configure:
	@perl -pi -e 's|_LOCALBASE_|${LOCALBASE}|g' ${WRKSRC}/setup.py

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/pyusb
	${INSTALL_DATA} ${WRKSRC}/samples/*.py ${PREFIX}/share/examples/pyusb

.include <bsd.port.mk>
