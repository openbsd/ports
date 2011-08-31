# $OpenBSD: Makefile,v 1.1.1.1 2011/08/31 19:46:37 jasper Exp $

COMMENT =		downhill racing game

DISTNAME =		extremetuxracer-0.4

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
LIB_DEPENDS =		devel/sdl-mixer \
			graphics/png \
			${MODTCL_LIB_DEPENDS}

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--with-tcl="${MODTCL_LIBDIR}" \
			--with-tcl-inc="${MODTCL_INCDIR}"
CONFIGURE_ENV =		LDFLAGS="-L${LOCALBASE}/lib" \
			CPPFLAGS="-I${LOCALBASE}/include/libpng"

NO_REGRESS =		Yes

.include <bsd.port.mk>
