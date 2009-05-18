#	$OpenBSD: Makefile,v 1.5 2009/05/18 05:59:23 phessler Exp $

DIST_SUBDIR ?=		alephone
COMMENT =		open source game engine based on Marathon 2: Durandal

DISTNAME =		AlephOne-20081226
PKGNAME =		alephone-0.21.2

EXTRACT_SUFX =		.tar.bz2
CATEGORIES =		games x11

HOMEPAGE =		http://source.bungie.org

MAINTAINER =		Peter Hessler <phessler@openbsd.org>

# GPLv2 or later
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=marathon/} \
			http://www.treellama.org/alephone/
WANTLIB = 		GL GLU SDL c m ogg pthread smpeg stdc++ z
BUILD_DEPENDS =		::devel/automake/${AUTOMAKE_VER} \
			::devel/autoconf/${AUTOCONF_VER}
LIB_DEPENDS =		::devel/boost \
			SDL_net::devel/sdl-net \
			SDL_image::devel/sdl-image \
			SDL_ttf::devel/sdl-ttf \
			smpeg.>=1.3::devel/smpeg \
			mad::audio/libmad \
			sndfile::audio/libsndfile \
			speexdsp,speex::audio/speex \
			vorbis,vorbisfile::audio/libvorbis

USE_X11 =		Yes
USE_BZIP2 =		Yes
CONFIGURE_STYLE =	gnu
AUTOCONF_VER =		2.61
AUTOMAKE_VER =		1.9
CONFIGURE_ENV =		AUTOCONF_VERSION=${AUTOCONF_VER} \
			AUTOMAKE_VERSION=${AUTOMAKE_VER}

.include <bsd.port.mk>
