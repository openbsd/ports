# $OpenBSD: Makefile,v 1.33 2017/10/14 09:32:25 benoit Exp $

COMMENT =		ZX Spectrum emulator file format library
DISTNAME =		libspectrum-1.4.1
SHARED_LIBS =		spectrum 8.2	# 15.11
CATEGORIES =		devel

HOMEPAGE =		http://fuse-emulator.sourceforge.net/libspectrum.php

MAINTAINER =		Benoit Lecocq <benoit@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=		FLAC audiofile bz2 gcrypt glib-2.0 gpg-error iconv
WANTLIB +=		intl m ogg pcre pthread z

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=fuse-emulator/}

LIB_DEPENDS =		devel/glib2 \
			security/libgcrypt \
			archivers/bzip2 \
			devel/libaudiofile

USE_GMAKE =		Yes

CONFIGURE_STYLE =	gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/libspectrum
	${INSTALL_DATA} ${WRKSRC}/doc/libspectrum.txt \
	    ${PREFIX}/share/doc/libspectrum

.include <bsd.port.mk>
