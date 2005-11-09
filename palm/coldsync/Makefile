# $OpenBSD: Makefile,v 1.4 2005/11/09 01:25:38 jcs Exp $

COMMENT=		"tool for synchronizing PalmOS devices"

DISTNAME=		coldsync-3.0-pre4
PKGNAME=		coldsync-3.0pre4p1
CATEGORIES=		palm comms

MASTER_SITES=		http://www.coldsync.org/download/

# artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c stdc++ m

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--without-usb --without-libusb

FAKE_FLAGS=		${MAKE_FLAGS}

.include <bsd.port.mk>
