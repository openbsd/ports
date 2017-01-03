# $OpenBSD: Makefile,v 1.27 2017/01/03 13:15:27 fcambus Exp $

COMMENT=		ZX Spectrum emulator file format library
DISTNAME=		libspectrum-1.3.2
SHARED_LIBS=		spectrum 7.1	# 12.5
CATEGORIES=		devel

HOMEPAGE=		http://fuse-emulator.sourceforge.net/libspectrum.php

MAINTAINER=		Benoit Lecocq <benoit@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB+=		FLAC audiofile bz2 gcrypt glib-2.0 gpg-error iconv
WANTLIB+=		intl m ogg pcre pthread z

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=fuse-emulator/}

LIB_DEPENDS=		devel/glib2 \
			security/libgcrypt \
			archivers/bzip2 \
			devel/libaudiofile

USE_GMAKE=		Yes

CONFIGURE_STYLE=	gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/libspectrum
	${INSTALL_DATA} ${WRKSRC}/doc/libspectrum.txt \
	    ${PREFIX}/share/doc/libspectrum

.include <bsd.port.mk>
