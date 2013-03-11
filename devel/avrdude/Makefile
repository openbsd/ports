# $OpenBSD: Makefile,v 1.19 2013/03/11 10:50:01 espie Exp $

COMMENT=	AVR microcontroller hardware in-system programmer

V=		5.10
DISTNAME=	avrdude-${V}
REVISION=	3
DISTFILES+=	avrdude-${V}.tar.gz avrdude-doc-${V}.pdf
CATEGORIES=	devel

HOMEPAGE=	http://www.nongnu.org/avrdude/

MAINTAINER=	Chris Kuethe <ckuethe@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c m ncurses readline termcap usb pthread

MASTER_SITES=	${MASTER_SITE_SAVANNAH:=avrdude/}
EXTRACT_ONLY=	avrdude-${V}${EXTRACT_SUFX}

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -pthread"
USE_GROFF =		Yes

LIB_DEPENDS=		devel/libusb-compat

SUBST_VARS+=		V

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/avrdude
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/avrdude
	${INSTALL_DATA} ${WRKSRC}/avrdude.conf ${PREFIX}/share/examples/avrdude
	${INSTALL_DATA} ${FULLDISTDIR}/avrdude-doc-${V}.pdf \
		${PREFIX}/share/doc/avrdude

.include <bsd.port.mk>
