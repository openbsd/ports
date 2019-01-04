# $OpenBSD: Makefile,v 1.1.1.1 2019/01/04 20:35:47 kn Exp $

COMMENT =		hierarchical schematic capture program

DISTNAME =		xschem-2.8.1

CATEGORIES =		cad

HOMEPAGE =		http://repo.hu/projects/xschem/

MAINTAINER =		Hannu Vuolasaho <vuokkosetae@gmail.com>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

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

FAKE_FLAGS =		MANDIR="${DESTDIR}${PREFIX}/man"

NO_TEST =		Yes

pre-configure:
	${MODTCL_WISH_ADJ} ${WRKSRC}/src/xschem.tcl ${WRKSRC}/utile/utile.tcl
	${SUBST_CMD} ${WRKSRC}/doc/manpages/xschem.1

.include <bsd.port.mk>
