# $OpenBSD: Makefile,v 1.3 2004/05/08 06:46:10 sturm Exp $

COMMENT=		"ZX Spectrum emulator file format library"

DISTNAME=		libspectrum-0.2.1
CATEGORIES=		devel

HOMEPAGE=		http://fuse-emulator.sourceforge.net/libspectrum.php

MAINTAINER=		Alexander Yurchenko <grange@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=fuse-emulator/}

BUILD_DEPENDS=		::devel/pkgconfig
LIB_DEPENDS=		glib-2.0.0.11::devel/glib2 \
			gcrypt.12::security/libgcrypt

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/libspectrum
	${INSTALL_DATA} ${WRKSRC}/doc/libspectrum.txt \
	    ${PREFIX}/share/doc/libspectrum

.include <bsd.port.mk>
