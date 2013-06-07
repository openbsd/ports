# $OpenBSD: Makefile,v 1.18 2013/06/07 06:10:15 dcoppa Exp $

COMMENT =		ncurses mpd client inspired by ncmpc

DISTNAME =		ncmpcpp-0.5.10
REVISION =		3

EXTRACT_SUFX =		.tar.bz2

CATEGORIES =		audio

HOMEPAGE =		http://ncmpcpp.rybczak.net/

MAINTAINER =		David Coppa <dcoppa@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${HOMEPAGE}stable/ \
			http://distfiles.nl/

WANTLIB =		c crypto curl idn m mpdclient \
			ncursesw pthread ssl stdc++ tag z

LIB_DEPENDS =		audio/libmpdclient>=2.4 \
			audio/taglib \
			net/curl

MODULES =		devel/gettext

FAKE_FLAGS =		docdir="${PREFIX}/share/examples/ncmpcpp/"

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--enable-clock \
			--enable-outputs \
			--enable-unicode \
			--with-curl \
			--with-iconv \
			--with-taglib \
			--without-fftw

NO_TEST =		Yes

.include <bsd.port.mk>
