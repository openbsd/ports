# $OpenBSD: Makefile,v 1.6 2019/07/12 20:44:40 sthen Exp $

COMMENT=	library and tools for creating SVF and XSVF JTAG players

# svn rev 62
DISTNAME=	libxsvf-0.0.62
REVISION=	1
CATEGORIES=	devel

HOMEPAGE=	http://www.clifford.at/libxsvf/

# ISC
PERMIT_PACKAGE=	Yes

WANTLIB += c curses ftdi pthread readline usb

MASTER_SITES=	https://distfiles.nl/


LIB_DEPENDS=	devel/libftdi

USE_GMAKE=	Yes

MAKE_FLAGS+=	EXTRA_LDFLAGS+="-L${LOCALBASE}/lib/ -ltermcap -pthread" \
		EXTRA_CFLAGS+="-I${LOCALBASE}/include/"

NO_TEST=	Yes

XPCU_DOC=	README *.sh *.ihx *.inc *.v *.ucf *.svf

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/xsvftool-{bp,ft2232h,gpio,xpcu} ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/libxsvf/
	${INSTALL_DATA} ${WRKSRC}/xsvftool-{bp,ft2232h,gpio}.c \
		${PREFIX}/share/examples/libxsvf/
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/libxsvf/xsvftool-xpcu/
.for d in ${XPCU_DOC}
	${INSTALL_DATA} ${WRKSRC}/xsvftool-xpcu.src/$d \
		${PREFIX}/share/doc/libxsvf/xsvftool-xpcu/
.endfor
	${INSTALL_DATA} ${WRKSRC}/libxsvf.h ${PREFIX}/include
	${INSTALL_DATA} ${WRKSRC}/libxsvf.a ${PREFIX}/lib

.include <bsd.port.mk>
