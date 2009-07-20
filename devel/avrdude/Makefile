# $OpenBSD: Makefile,v 1.7 2009/07/20 16:44:05 ckuethe Exp $

COMMENT=	AVR microcontroller hardware in-system programmer

V=		5.8
DISTNAME=	avrdude-${V}
DISTFILES+=	avrdude-${V}.tar.gz avrdude-doc-${V}.pdf
PKGNAME=	${DISTNAME}
CATEGORIES=	devel

HOMEPAGE=	http://www.nongnu.org/avrdude/

MAINTAINER=	Chris Kuethe <ckuethe@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m ncurses readline termcap

MASTER_SITES=	${MASTER_SITE_SAVANNAH:=avrdude/}
EXTRACT_ONLY=	avrdude-${V}${EXTRACT_SUFX}

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	CPPFLAGS=-I${LOCALBASE}/include \
			LDFLAGS=-L${LOCALBASE}/lib

LIB_DEPENDS=		usb.>=1::devel/libusb

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/avrdude
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/avrdude
	${INSTALL_DATA} ${WRKSRC}/avrdude.conf ${PREFIX}/share/examples/avrdude
	${INSTALL_DATA} ${FULLDISTDIR}/avrdude-doc-${V}.pdf \
		${PREFIX}/share/doc/avrdude

.include <bsd.port.mk>
