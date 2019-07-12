# $OpenBSD: Makefile,v 1.37 2019/07/12 20:44:40 sthen Exp $

COMMENT =		ZX Spectrum emulator file format library
DISTNAME =		libspectrum-1.4.4
SHARED_LIBS =		spectrum 8.3	# 16.14
CATEGORIES =		devel

HOMEPAGE =		http://fuse-emulator.sourceforge.net/libspectrum.php

MAINTAINER =		Benoit Lecocq <benoit@openbsd.org>

# GPLv2
PERMIT_PACKAGE =	Yes

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
