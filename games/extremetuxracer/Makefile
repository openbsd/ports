# $OpenBSD: Makefile,v 1.2 2011/09/01 12:26:29 sthen Exp $

COMMENT =		downhill racing game

DISTNAME =		extremetuxracer-0.4
REVISION =		0

CATEGORIES =		games

HOMEPAGE =		http://extremetuxracer.com/

MAINTAINER =		Pascal Stumpf <Pascal.Stumpf@cubes.de>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB = GL GLU ICE SDL SDL_mixer SM X11 Xext Xi Xmu Xt c freetype
WANTLIB += m png pthread stdc++ z ${MODTCL_WANTLIB}


MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=extremetuxracer/}

MODULES =		lang/tcl
RUN_DEPENDS =		devel/desktop-file-utils
LIB_DEPENDS =		devel/sdl-mixer \
			graphics/png \
			${MODTCL_LIB_DEPENDS}

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--with-tcl="${MODTCL_LIBDIR}" \
			--with-tcl-inc="${MODTCL_INCDIR}"
CONFIGURE_ENV =		LDFLAGS="-L${LOCALBASE}/lib" \
			CPPFLAGS="-I${LOCALBASE}/include/libpng"

NO_REGRESS =		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps ${PREFIX}/share/applications
	${INSTALL_DATA} ${WRKSRC}/etracericon.svg ${PREFIX}/share/pixmaps
	${INSTALL_DATA} ${FILESDIR}/etracer.desktop ${PREFIX}/share/applications

.include <bsd.port.mk>
