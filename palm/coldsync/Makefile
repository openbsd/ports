# $OpenBSD: Makefile,v 1.1.1.1 2005/01/17 00:25:38 jcs Exp $

COMMENT=		"tool for synchronizing PalmOS devices"

DISTNAME=		coldsync-3.0-pre4
PKGNAME=		coldsync-3.0pre4
CATEGORIES=		palm comms

MASTER_SITES=		http://www.coldsync.org/download/

MAINTAINER=		joshua stein <jcs@openbsd.org>

# artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--without-usb

.include <bsd.port.mk>
