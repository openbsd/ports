# $OpenBSD: Makefile,v 1.16 2019/07/12 20:43:35 sthen Exp $

COMMENT=		communicate with some Creative and Dell audio players

DISTNAME=		libnjb-2.2.7
REVISION=		2
CATEGORIES=		audio devel

SHARED_LIBS +=  njb                  0.0      # 6.1

HOMEPAGE=		http://libnjb.sourceforge.net/

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB += c curses pthread usb usb-1.0 z

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=libnjb/}

LIB_DEPENDS=		devel/libusb-compat

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		LDFLAGS="-L${LOCALBASE}/lib" \
			CPPFLAGS="-I${LOCALBASE}/include" \
			HAVE_DOXYGEN="no"

FAKE_FLAGS=		pkgdocdir=${PREFIX}/share/doc/libnjb

.include <bsd.port.mk>
