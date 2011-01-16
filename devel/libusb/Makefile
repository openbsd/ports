# $OpenBSD: Makefile,v 1.19 2011/01/16 00:44:35 jakemsr Exp $

COMMENT=	USB access library

DISTNAME=	libusb-0.1.12
REVISION=	1
SHARED_LIBS=		usb	9.0 \
			usbpp	10.0
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

WANTLIB += m stdc++

USE_LIBTOOL=		Yes
SEPARATE_BUILD=		concurrent
CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS+= 	${CONFIGURE_SHARED} \
			--disable-build-docs

.include <bsd.port.mk>
