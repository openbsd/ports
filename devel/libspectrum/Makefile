# $OpenBSD: Makefile,v 1.23 2013/03/21 08:45:16 ajacoutot Exp $

COMMENT=		ZX Spectrum emulator file format library
DISTNAME=		libspectrum-1.0.0
SHARED_LIBS=		spectrum 6.0	# 8.0
CATEGORIES=		devel
REVISION=		1

HOMEPAGE=		http://fuse-emulator.sourceforge.net/libspectrum.php

MAINTAINER=		Benoit Lecocq <benoit@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		gpg-error pcre m z glib-2.0>=0.11 \
			gcrypt>=12 bz2>=10 audiofile

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=fuse-emulator/}

MODULES=		devel/gettext
LIB_DEPENDS=		devel/glib2 \
			security/libgcrypt \
			archivers/bzip2 \
			devel/libaudiofile

USE_GMAKE=		Yes
USE_GROFF =		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/libspectrum
	${INSTALL_DATA} ${WRKSRC}/doc/libspectrum.txt \
	    ${PREFIX}/share/doc/libspectrum

.include <bsd.port.mk>
