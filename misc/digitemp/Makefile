# $OpenBSD: Makefile,v 1.1.1.1 2007/10/07 09:42:03 sturm Exp $

COMMENT=	program for reading values from 1-wire devices

DISTNAME=	digitemp-3.5.0
CATEGORIES=	misc

HOMEPAGE=	http://www.digitemp.com/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	c m

MASTER_SITES=	${HOMEPAGE}/software/linux/

LIB_DEPENDS=	usb::devel/libusb

NO_CONFIGURE=	Yes
USE_GMAKE=	Yes
ALL_TARGET=	ds9097 ds9097u ds2490

CFLAGS+=	-I${LOCALBASE}/include
MAKE_ENV=	LDFLAGS=-L${LOCALBASE}/lib
MAKE_FLAGS=	CC=${CC}

NO_REGRESS=	Yes

do-install:
	$(INSTALL_DATA_DIR) ${PREFIX}/share/doc/digitemp
	$(INSTALL_DATA) $(WRKSRC)/README ${PREFIX}/share/doc/digitemp
	$(INSTALL_DATA) $(WRKSRC)/FAQ ${PREFIX}/share/doc/digitemp
	$(INSTALL_PROGRAM) $(WRKSRC)/digitemp_DS2490 ${PREFIX}/bin
	$(INSTALL_PROGRAM) $(WRKSRC)/digitemp_DS9097 ${PREFIX}/bin
	$(INSTALL_PROGRAM) $(WRKSRC)/digitemp_DS9097U ${PREFIX}/bin
	$(INSTALL_MAN) $(WRKSRC)/digitemp.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
