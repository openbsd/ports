# $OpenBSD: Makefile,v 1.15 2009/05/23 16:46:36 benoit Exp $

COMMENT=		ZX Spectrum emulator file format library
DISTNAME=		libspectrum-0.5.0.1
SHARED_LIBS=		spectrum 5.0	# .7.0
CATEGORIES=		devel

HOMEPAGE=		http://fuse-emulator.sourceforge.net/libspectrum.php

MAINTAINER=		Benoit Lecocq <benoit@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		gpg-error pcre m z 

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=fuse-emulator/}

MODULES=		devel/gettext
LIB_DEPENDS=		glib-2.0.>=0.11::devel/glib2 \
			gcrypt.>=12::security/libgcrypt \
			bz2.>=10::archivers/bzip2 \
			audiofile.>=0::devel/libaudiofile

USE_GMAKE=		Yes
USE_LIBTOOL=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/libspectrum
	${INSTALL_DATA} ${WRKSRC}/doc/libspectrum.txt \
	    ${PREFIX}/share/doc/libspectrum

.include <bsd.port.mk>
