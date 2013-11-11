# $OpenBSD: Makefile,v 1.4 2013/11/11 13:56:51 steven Exp $

COMMENT =		mpd client to scrobble track info to last.fm

V =			0.22
DISTNAME =		mpdscribble-$V

CATEGORIES =		audio

HOMEPAGE =		http://mpd.wikia.com/wiki/Client:Mpdscribble

MAINTAINER =		Steven Mestdagh <steven@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://www.musicpd.org/download/mpdscribble/$V/

MODULES =		devel/gettext

WANTLIB =		c mpdclient glib-2.0 curl

LIB_DEPENDS =		net/curl \
			devel/glib2 \
			audio/libmpdclient

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--with-http-client=curl

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/src/mpdscribble ${PREFIX}/bin/mpdscribble
	${INSTALL_MAN} ${WRKSRC}/doc/mpdscribble.1 ${PREFIX}/man/man1/mpdscribble.1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/mpdscribble
	${INSTALL_DATA} ${WRKSRC}/doc/mpdscribble.conf ${PREFIX}/share/doc/mpdscribble

.include <bsd.port.mk>
