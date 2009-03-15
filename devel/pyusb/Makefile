# $OpenBSD: Makefile,v 1.5 2009/03/15 13:14:43 espie Exp $
SHARED_ONLY=	Yes

COMMENT=		python interface to libusb
MODPY_EGG_VERSION=	0.4.1
DISTNAME=		pyusb-${MODPY_EGG_VERSION}
PKGNAME =		${DISTNAME}p0
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

LIB_DEPENDS=	usb::devel/libusb

pre-configure:
	@perl -pi -e 's|_LOCALBASE_|${LOCALBASE}|g' ${WRKSRC}/setup.py

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/pyusb
	${INSTALL_DATA} ${WRKSRC}/samples/*.py ${PREFIX}/share/examples/pyusb

.include <bsd.port.mk>
