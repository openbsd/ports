# $OpenBSD: Makefile,v 1.26 2019/07/12 20:44:04 sthen Exp $

COMMENT=	AVR microcontroller hardware in-system programmer

V=		5.11
DISTNAME=	avrdude-${V}
REVISION=	4
DISTFILES+=	avrdude-${V}.tar.gz avrdude-doc-${V}.pdf
CATEGORIES=	devel

HOMEPAGE=	http://www.nongnu.org/avrdude/

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += c curses ftdi m pthread readline usb usb-1.0

MASTER_SITES=	${MASTER_SITE_SAVANNAH:=avrdude/}
EXTRACT_ONLY=	avrdude-${V}${EXTRACT_SUFX}

AUTOCONF_VERSION=	2.68
CONFIGURE_STYLE=	autoconf
CONFIGURE_ARGS+=	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -pthread"

LIB_DEPENDS=		devel/libftdi \
			devel/libusb-compat

SUBST_VARS+=		V

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/avrdude
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/avrdude
	${INSTALL_DATA} ${WRKSRC}/avrdude.conf ${PREFIX}/share/examples/avrdude
	${INSTALL_DATA} ${FULLDISTDIR}/avrdude-doc-${V}.pdf \
		${PREFIX}/share/doc/avrdude

.include <bsd.port.mk>
