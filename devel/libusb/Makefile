# $OpenBSD: Makefile,v 1.8 2003/01/01 21:34:44 brad Exp $

COMMENT=	"USB access library"

VERSION=	0.1.7
DISTNAME=	libusb-${VERSION}
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

.include <bsd.port.mk>
