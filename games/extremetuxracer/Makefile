# $OpenBSD: Makefile,v 1.5 2013/06/03 02:46:57 naddy Exp $

COMMENT =		downhill racing game

DISTNAME =		extremetuxracer-0.4
REVISION =		1

CATEGORIES =		games

HOMEPAGE =		http://extremetuxracer.com/

MAINTAINER =		Pascal Stumpf <Pascal.Stumpf@cubes.de>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB = GL GLU ICE SDL SDL_mixer SM X11 Xext Xi Xmu Xt c freetype
WANTLIB += m png pthread stdc++ z ${MODTCL_WANTLIB}


MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=extremetuxracer/}

MODULES =		lang/tcl
BUILD_DEPENDS =		archivers/unzip
RUN_DEPENDS =		devel/desktop-file-utils
LIB_DEPENDS =		devel/sdl-mixer \
			graphics/png \
			${MODTCL_LIB_DEPENDS}

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--with-tcl="${MODTCL_LIBDIR}" \
			--with-tcl-inc="${MODTCL_INCDIR}"
CONFIGURE_ENV =		LDFLAGS="-L${LOCALBASE}/lib" \
			CPPFLAGS="-I${LOCALBASE}/include"

NO_TEST =		Yes

post-build:
	cd ${WRKSRC}; unzip etracericons.zip

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps ${PREFIX}/share/applications
	${INSTALL_DATA} ${WRKSRC}/etracericons/etracericon_48.png ${PREFIX}/share/pixmaps
	${INSTALL_DATA} ${FILESDIR}/etracer.desktop ${PREFIX}/share/applications

.include <bsd.port.mk>
