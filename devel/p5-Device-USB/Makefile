# $OpenBSD: Makefile,v 1.10 2011/11/13 13:54:04 ajacoutot Exp $

COMMENT=		perl wrapper around libusb

DISTNAME=		Device-USB-0.31
REVISION=		2
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
RUN_DEPENDS=		devel/p5-Inline
LIB_DEPENDS =		devel/libusb-compat
WANTLIB =		usb

CONFIGURE_ENV+= 	LIBUSB_INCDIR="${LOCALBASE}/include" \
			LIBUSB_LIBDIR="${LOCALBASE}/lib"
USE_GROFF =		Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/lib/Device/USB.pm
	rm ${WRKSRC}/lib/Device/USB.pm.*

.include <bsd.port.mk>
