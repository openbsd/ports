# $OpenBSD: Makefile,v 1.18 2017/08/21 19:43:20 jasper Exp $

COMMENT=		perl wrapper around libusb

DISTNAME=		Device-USB-0.31
REVISION=		7
CATEGORIES=		devel

MODULES=		cpan

HOMEPAGE=		https://github.com/gwadej/perl-device-usb

# perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c perl usb

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/p5-Inline
LIB_DEPENDS =		devel/libusb-compat

CONFIGURE_ENV+= 	LIBUSB_INCDIR="${LOCALBASE}/include" \
			LIBUSB_LIBDIR="${LOCALBASE}/lib"

pre-configure:
	${SUBST_CMD} ${WRKSRC}/lib/Device/USB.pm
	rm ${WRKSRC}/lib/Device/USB.pm.*

.include <bsd.port.mk>
