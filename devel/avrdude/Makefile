# $OpenBSD: Makefile,v 1.27 2020/05/18 18:36:18 tracey Exp $

COMMENT=	AVR microcontroller hardware in-system programmer

V=		6.3
DISTNAME=	avrdude-${V}
DISTFILES+=	avrdude-${V}.tar.gz avrdude-doc-${V}.pdf

SHARED_LIBS +=  avrdude                   0.0 # 1.0

CATEGORIES=	devel

HOMEPAGE=	https://www.nongnu.org/avrdude/

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += c curses elf ftdi1 m pthread readline usb usb-1.0

MASTER_SITES=	${MASTER_SITE_SAVANNAH:=avrdude/}
EXTRACT_ONLY=	avrdude-${V}${EXTRACT_SUFX}

AUTOCONF_VERSION=	2.69
CONFIGURE_STYLE=	autoconf
CONFIGURE_ARGS+=	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -pthread"

LIB_DEPENDS=		devel/libftdi1 \
			devel/libusb-compat

SUBST_VARS+=		V

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/avrdude
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/avrdude
	${INSTALL_DATA} ${WRKSRC}/avrdude.conf ${PREFIX}/share/examples/avrdude
	${INSTALL_DATA} ${FULLDISTDIR}/avrdude-doc-${V}.pdf \
		${PREFIX}/share/doc/avrdude

.include <bsd.port.mk>
