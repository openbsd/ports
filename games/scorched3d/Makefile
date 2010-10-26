 # $OpenBSD: Makefile,v 1.1.1.1 2010/10/26 10:34:00 phessler Exp $

COMMENT =		modernization of the classic DOS game Scorched Earth

DISTNAME =		Scorched3D-43.1c-src
PKGNAME =		${DISTNAME:L:S/-src//}

CATEGORIES =		games x11

HOMEPAGE =		http://www.scorched3d.co.uk

# GPLv2 or later
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB +=		GL GLU c expat freetype m pthread sndio stdc++ z
WANTLIB +=		SDL SDL_net alut fftw3f jpeg openal png ogg vorbisfile
WANTLIB +=		wx_base wx_base_net wx_base_odbc wx_base_xml vorbis
WANTLIB +=		wx_gtk2_adv wx_gtk2_aui wx_gtk2_core wx_gtk2_dbgrid
WANTLIB +=		wx_gtk2_html wx_gtk2_qa wx_gtk2_richtext wx_gtk2_xrc

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=scorched3d/}

LIB_DEPENDS =		::audio/openal \
			::audio/libvorbis \
			::audio/freealut \
			::x11/wxWidgets \
			::math/fftw3,float \
			::devel/sdl-net \
			::devel/sdl-mixer
RUN_DEPENDS =		::devel/xdg-utils

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS = 	--disable-openaltest \
			--datarootdir=${PREFIX}/share/scorched3d/ \
			--docdir=${PREFIX}/share/doc/scorched3d/

WRKDIST =		${WRKDIR}/scorched

.include <bsd.port.mk>
