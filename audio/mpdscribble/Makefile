COMMENT =		mpd client to scrobble track info to last.fm

V =			0.25
DISTNAME =		mpdscribble-$V
EXTRACT_SUFX = 		.tar.xz

CATEGORIES =		audio

HOMEPAGE =		https://www.musicpd.org/clients/mpdscribble/

MAINTAINER =		Steven Mestdagh <steven@openbsd.org>

# GPLv2
PERMIT_PACKAGE =	Yes

# C++
COMPILER =		base-clang ports-gcc

WANTLIB += c curl gcrypt mpdclient
WANTLIB += ${COMPILER_LIBCXX} m

SITES =			http://www.musicpd.org/download/mpdscribble/$V/

LIB_DEPENDS =		net/curl \
			audio/libmpdclient \
			security/libgcrypt

MODULES =		devel/meson

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/mpdscribble ${PREFIX}/bin/mpdscribble
	${INSTALL_MAN} ${WRKSRC}/doc/mpdscribble.1 ${PREFIX}/man/man1/mpdscribble.1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/mpdscribble
	${INSTALL_DATA} ${WRKSRC}/doc/mpdscribble.conf ${PREFIX}/share/doc/mpdscribble

.include <bsd.port.mk>
