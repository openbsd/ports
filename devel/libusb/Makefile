# $OpenBSD: Makefile,v 1.14 2006/01/17 14:25:32 naddy Exp $

COMMENT=	"USB access library"

DISTNAME=	libusb-0.1.10a
PKGNAME=	${DISTNAME}p1
SHARED_LIBS=		usb	8.2 \
			usbpp	9.0
MODGNU_SHARED_LIBS=	usb	'-export-dynamic' \
			usbpp	'-export-dynamic'

CATEGORIES=	devel

HOMEPAGE=	http://libusb.sourceforge.net/

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=libusb/}

USE_LIBTOOL=		Yes
SEPARATE_BUILD=		concurrent
CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS+= 	${CONFIGURE_SHARED} \
			--enable-static --disable-build-docs

.include <bsd.port.mk>
