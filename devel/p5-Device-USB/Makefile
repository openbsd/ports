# $OpenBSD: Makefile,v 1.17 2016/03/20 19:56:21 naddy Exp $

COMMENT=		perl wrapper around libusb

DISTNAME=		Device-USB-0.31
REVISION=		6
CATEGORIES=		devel

MODULES=		cpan

HOMEPAGE=		https://code.google.com/p/perl-device-usb/

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
