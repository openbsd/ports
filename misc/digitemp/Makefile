# $OpenBSD: Makefile,v 1.9 2019/07/12 20:47:49 sthen Exp $

COMMENT=	program for reading values from 1-wire devices

DISTNAME=	digitemp-3.5.0
CATEGORIES=	misc
REVISION=	1

HOMEPAGE=	http://www.digitemp.com/

# GPL
PERMIT_PACKAGE=	Yes

WANTLIB=	c m usb pthread

MASTER_SITES=	${HOMEPAGE}/software/linux/

LIB_DEPENDS=	devel/libusb-compat

NO_CONFIGURE=	Yes
USE_GMAKE=	Yes
ALL_TARGET=	ds9097 ds9097u ds2490

CFLAGS+=	-I${LOCALBASE}/include
MAKE_ENV=	LDFLAGS=-L${LOCALBASE}/lib
MAKE_FLAGS=	CC=${CC}

NO_TEST=	Yes

do-install:
	$(INSTALL_DATA_DIR) ${PREFIX}/share/doc/digitemp
	$(INSTALL_DATA) $(WRKSRC)/README ${PREFIX}/share/doc/digitemp
	$(INSTALL_DATA) $(WRKSRC)/FAQ ${PREFIX}/share/doc/digitemp
	$(INSTALL_PROGRAM) $(WRKSRC)/digitemp_DS2490 ${PREFIX}/bin
	$(INSTALL_PROGRAM) $(WRKSRC)/digitemp_DS9097 ${PREFIX}/bin
	$(INSTALL_PROGRAM) $(WRKSRC)/digitemp_DS9097U ${PREFIX}/bin
	$(INSTALL_MAN) $(WRKSRC)/digitemp.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
