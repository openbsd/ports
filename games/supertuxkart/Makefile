# $OpenBSD: Makefile,v 1.8 2012/11/22 11:54:06 pascal Exp $

COMMENT =		kart racing game with OSS mascots

BASENAME =		supertuxkart-0.7.3
DISTNAME =		${BASENAME}-src
PKGNAME =		${BASENAME}

CATEGORIES =		games

HOMEPAGE =		http://supertuxkart.sourceforge.net

MAINTAINER =		Pascal Stumpf <Pascal.Stumpf@cubes.de>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB += GL GLU ICE Irrlicht SM X11 Xext Xxf86vm c curl fribidi
WANTLIB += m ogg openal pthread stdc++ vorbis vorbisfile

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=supertuxkart/SuperTuxKart/}
EXTRACT_SUFX =		.tar.bz2

MODULES =		devel/cmake

CONFIGURE_ARGS +=	-DIRRLICHT_DIR="${LOCALBASE}" -DX11BASE="${X11BASE}"

RUN_DEPENDS =		devel/desktop-file-utils
LIB_DEPENDS =		audio/openal>=0.0.8p7 \
			audio/libvorbis \
			x11/irrlicht>=1.8 \
			devel/fribidi \
			net/curl

USE_GMAKE =		Yes

WRKDIST =		${WRKDIR}/${BASENAME}

.include <bsd.port.mk>
