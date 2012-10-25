# $OpenBSD: Makefile,v 1.14 2012/10/25 13:43:42 dcoppa Exp $

COMMENT =		ncurses mpd client inspired by ncmpc

DISTNAME =		ncmpcpp-0.5.10
REVISION =		2

EXTRACT_SUFX =		.tar.bz2

CATEGORIES =		audio

HOMEPAGE =		http://ncmpcpp.rybczak.net/

MAINTAINER =		David Coppa <dcoppa@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		${HOMEPAGE}stable/ \
			http://distfiles.nl/

WANTLIB =		c crypto curl idn m mpdclient \
			ncursesw pthread ssl stdc++ tag z

LIB_DEPENDS =		audio/libmpdclient>=2.4 \
			audio/taglib \
			net/curl

MODULES =		devel/gettext

USE_LIBTOOL =		Yes

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--enable-clock \
			--enable-outputs \
			--enable-unicode \
			--with-curl \
			--with-iconv \
			--with-taglib \
			--without-fftw

NO_REGRESS =		Yes

.include <bsd.port.mk>
