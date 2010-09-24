# $OpenBSD: Makefile,v 1.4 2010/09/24 15:29:20 sthen Exp $

COMMENT=		perl wrapper around libusb

DISTNAME=		Device-USB-0.31
REVISION=		0
CATEGORIES=		devel
SHARED_ONLY=		Yes

MODULES=		cpan

HOMEPAGE=		http://code.google.com/p/perl-device-usb/

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		::devel/p5-Inline
LIB_DEPENDS =		usb::devel/libusb

CONFIGURE_ENV+= 	LIBUSB_INCDIR="${LOCALBASE}/include" \
			LIBUSB_LIBDIR="${LOCALBASE}/lib"

pre-configure:
	${SUBST_CMD} ${WRKSRC}/lib/Device/USB.pm
	rm ${WRKSRC}/lib/Device/USB.pm.*

.include <bsd.port.mk>
