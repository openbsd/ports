# $OpenBSD: Makefile,v 1.10 2003/12/27 07:16:40 pvalchev Exp $

COMMENT=	"USB access library"

VERSION=	0.1.7
DISTNAME=	libusb-${VERSION}
PKGNAME=	${DISTNAME}p2
CATEGORIES=	devel

HOMEPAGE=	http://libusb.sourceforge.net/

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=libusb/}

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static

post-extract:
	@rm ${WRKSRC}/usb.h

.include <bsd.port.mk>
