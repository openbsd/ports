# $OpenBSD: Makefile,v 1.1.1.1 2006/11/12 18:11:25 jolan Exp $
SHARED_ONLY=	Yes

COMMENT=	"python interface to libusb"
DISTNAME=	pyusb-0.3.5
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=pyusb/}

HOMEPAGE=	http://pyusb.berlios.de/

# GPL
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
