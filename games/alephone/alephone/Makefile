#	$OpenBSD: Makefile,v 1.19 2014/08/10 21:35:32 brad Exp $

DIST_SUBDIR ?=		alephone
COMMENT =		open source game engine based on Marathon 2: Durandal

DISTNAME =		AlephOne-20140104
PKGNAME =		alephone-1.1
REVISION =		0

EXTRACT_SUFX =		.tar.bz2
CATEGORIES =		games x11

HOMEPAGE =		http://source.bungie.org

MAINTAINER =		Peter Hessler <phessler@openbsd.org>

# GPLv2 or later
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=marathon/}

WANTLIB +=		GL GLU c m pthread stdc++ z
WANTLIB +=		SDL SDL_net SDL_image SDL_ttf mad png sndfile
WANTLIB +=		smpeg speex speexdsp vorbisfile zzip
WANTLIB += avcodec avformat avutil swscale

BUILD_DEPENDS =		devel/automake/${AUTOMAKE_VER} \
			devel/autoconf/${AUTOCONF_VER} \
			devel/boost
LIB_DEPENDS =		archivers/zziplib \
			devel/sdl-net \
			devel/sdl-image \
			devel/sdl-ttf \
			devel/smpeg \
			audio/libmad \
			audio/libsndfile \
			audio/speex \
			audio/libvorbis \
			graphics/ffmpeg

USE_BZIP2 =		Yes
USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu
AUTOCONF_VER =		2.61
AUTOMAKE_VER =		1.9
CONFIGURE_ENV =		AUTOCONF_VERSION=${AUTOCONF_VER} \
			AUTOMAKE_VERSION=${AUTOMAKE_VER}

.include <bsd.port.mk>
