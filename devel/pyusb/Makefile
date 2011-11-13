# $OpenBSD: Makefile,v 1.11 2011/11/13 13:54:04 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=		python interface to libusb
MODPY_EGG_VERSION=	0.4.1
DISTNAME=		pyusb-${MODPY_EGG_VERSION}
REVISION =		4
CATEGORIES=		devel
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=pyusb/}

HOMEPAGE=	http://pyusb.berlios.de/

# BSD
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

NO_REGRESS=	Yes

MODULES=	lang/python

LIB_DEPENDS=	devel/libusb-compat \
		${MODPY_LIB_DEPENDS}
WANTLIB =	usb ${MODPY_WANTLIB}

pre-configure:
	@perl -pi -e 's|_LOCALBASE_|${LOCALBASE}|g' ${WRKSRC}/setup.py

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/pyusb
	${INSTALL_DATA} ${WRKSRC}/samples/*.py ${PREFIX}/share/examples/pyusb

.include <bsd.port.mk>
