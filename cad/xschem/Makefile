# $OpenBSD: Makefile,v 1.4 2019/09/26 14:55:22 sthen Exp $

COMMENT =		hierarchical schematic capture program

DISTNAME =		xschem-2.9.2

CATEGORIES =		cad

HOMEPAGE =		http://repo.hu/projects/xschem/

MAINTAINER =		Hannu Vuolasaho <vuokkosetae@gmail.com>

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB =		${MODTK_WANTLIB} X11 X11-xcb Xpm Xrender
WANTLIB +=		c cairo m xcb xcb-render

MASTER_SITES =		http://repo.hu/projects/xschem/releases/

MODULES =		x11/tk
MODTK_VERSION =		8.5

BUILD_DEPENDS =		devel/bison

RUN_DEPENDS =		${MODTK_RUN_DEPENDS}

LIB_DEPENDS =		${MODTK_LIB_DEPENDS} \
			graphics/cairo

CONFIGURE_STYLE =	simple
CONFIGURE_ARGS =	--cflags/libs/script/tcl="${CFLAGS} -I${MODTCL_INCDIR}" \
			--ldflags/libs/script/tcl="-L${LOCALBASE}/lib" \
			--cflags/libs/script/tk="${CFLAGS} -I${MODTK_INCDIR}" \
			--prefix="${LOCALBASE}" \
			/arg/tk-version=${MODTK_VERSION}

FAKE_FLAGS =		MANDIR="${DESTDIR}${PREFIX}/man" \
			XEXAMPLESDIR="${DESTDIR}${PREFIX}/share/examples/xschem"

NO_TEST =		Yes

pre-configure:
	${MODTCL_WISH_ADJ} ${WRKSRC}/src/utile/utile.tcl

.include <bsd.port.mk>
