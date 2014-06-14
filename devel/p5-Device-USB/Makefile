# $OpenBSD: Makefile,v 1.14 2014/06/14 23:24:56 sthen Exp $

COMMENT=		perl wrapper around libusb

DISTNAME=		Device-USB-0.31
REVISION=		5
CATEGORIES=		devel
SHARED_ONLY=		Yes

MODULES=		cpan

HOMEPAGE=		https://code.google.com/p/perl-device-usb/

# perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c usb

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/p5-Inline
LIB_DEPENDS =		devel/libusb-compat

CONFIGURE_ENV+= 	LIBUSB_INCDIR="${LOCALBASE}/include" \
			LIBUSB_LIBDIR="${LOCALBASE}/lib"
USE_GROFF =		Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/lib/Device/USB.pm
	rm ${WRKSRC}/lib/Device/USB.pm.*

.include <bsd.port.mk>
