# $OpenBSD: Makefile,v 1.2 2005/02/12 18:08:12 jcs Exp $

COMMENT=		"tool for synchronizing PalmOS devices"

DISTNAME=		coldsync-3.0-pre4
PKGNAME=		coldsync-3.0pre4p0
CATEGORIES=		palm comms

MASTER_SITES=		http://www.coldsync.org/download/

MAINTAINER=		joshua stein <jcs@openbsd.org>

# artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c stdc++ m

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--without-usb --without-libusb

.include <bsd.port.mk>
