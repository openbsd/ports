# $OpenBSD: Makefile,v 1.7 2019/07/12 20:43:45 sthen Exp $

COMMENT =		Tcl/Tk based digital circuit editor and simulator

DISTNAME =		tkgate-2.1

CATEGORIES =		cad x11

MAINTAINER =		Kirill Bychkov <kirby@openbsd.org>

MASTER_SITES =		https://bitbucket.org/starling13/tkgate/downloads/

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += ICE SM X11 Xft Xrender c expat fontconfig freetype
WANTLIB += fribidi glib-2.0 gobject-2.0 graphite2 gthread-2.0
WANTLIB += harfbuzz iconv intl m pango-1.0 pangoft2-1.0 pangoxft-1.0
WANTLIB += pthread tcl85 tk85 xcb z ${MODTK_WANTLIB}


MODULES =		x11/tk

LIB_DEPENDS =		converters/libiconv \
			devel/pango
BUILD_DEPENDS = 	${MODTK_BUILD_DEPENDS}
RUN_DEPENDS = 		${MODTK_RUN_DEPENDS} \
			devel/desktop-file-utils

SEPARATE_BUILD = 	Yes
USE_LIBTOOL = 		gnu
CONFIGURE_STYLE =	autoreconf
CONFIGURE_ENV += 	TKGATE_LIBDIRS="${MODTCL_LIBDIR} ${MODTK_LIBDIR} \
				${LOCALBASE}/lib ${X11BASE}/lib" \
			TKGATE_INCDIRS="${MODTCL_INCDIR} ${MODTK_INCDIR} \
				${LOCALBASE}/include ${X11BASE}/include" \
			TKGATE_TCLTK_VERSIONS=${MODTK_VERSION}

AUTOCONF_VERSION = 	2.69
AUTOMAKE_VERSION = 	1.9

post-extract:
	mkdir ${WRKSRC}/m4

pre-configure:
	${SUBST_CMD} ${WRKSRC}/scripts/parms.tcl ${WRKSRC}/src/tkgate/verilog_out.c
	${MODTCL_WISH_ADJ} ${WRKSRC}/scripts/tree.tcl

.include <bsd.port.mk>
