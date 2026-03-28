COMMENT =		ZX Spectrum emulator file format library
DISTNAME =		libspectrum-1.6.0
SHARED_LIBS =		spectrum 10.0	# 18.0
CATEGORIES =		devel

HOMEPAGE =		https://fuse-emulator.sourceforge.net/libspectrum.php

MAINTAINER =		Benoit Lecocq <benoit@openbsd.org>

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB +=		FLAC audiofile bz2 gcrypt glib-2.0 gpg-error iconv
WANTLIB +=		intl m ogg pcre2-8 pthread z

SITES =			${SITE_SOURCEFORGE:=fuse-emulator/}

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
