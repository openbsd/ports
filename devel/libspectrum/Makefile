# $OpenBSD: Makefile,v 1.5 2005/03/12 12:47:53 alek Exp $

COMMENT=		"ZX Spectrum emulator file format library"

DISTNAME=		libspectrum-0.2.1
PKGNAME=		${DISTNAME}p0
CATEGORIES=		devel

HOMEPAGE=		http://fuse-emulator.sourceforge.net/libspectrum.php

MAINTAINER=		Alexander Yurchenko <grange@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		gpg-error z

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=fuse-emulator/}

MODULES=		devel/gettext
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
