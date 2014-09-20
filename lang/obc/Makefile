# $OpenBSD: Makefile,v 1.6 2014/09/20 21:00:48 jca Exp $

# Fatal error: assertion sizeof(page_index) == GC_PAGESIZE failed on line 1110 of file gc.c
ONLY_FOR_ARCHS= i386

SHARED_ONLY =	Yes

COMMENT =	Oxford Oberon-2 compiler

DISTNAME =	obc-2.9.2
REVISION =	1
CATEGORIES =	lang

HOMEPAGE =	http://spivey.oriel.ox.ac.uk/corner/Oxford_Oberon-2_compiler

MAINTAINER =	Alexander Shiryaev <shiryaev.a.v@gmail.com>

# BSD-3
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	http://spivey.oriel.ox.ac.uk/wiki/resources/sw/

MODULES =	devel/gettext \
		lang/ocaml \
		lang/tcl

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 c cairo
WANTLIB += curses drm expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += gtk-x11-2.0 gtksourceview-2.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pixman-1 png pthread pthread-stubs xcb
WANTLIB += xcb-render xcb-shm xml2 z

LIB_DEPENDS =	x11/gtksourceview
BUILD_DEPENDS =	${RUN_DEPENDS} \
		${MODTCL_BUILD_DEPENDS}
RUN_DEPENDS =	STEM->=2.14.2p1:x11/lablgtk2

USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--enable-debug \
			--with-x
CONFIGURE_ENV =		CFLAGS="${CFLAGS} -m32 -I${X11BASE}/include" \
			TCLSH="${MODTCL_BIN}" \
			DLFLAGS="-Wl,-E"

FAKE_FLAGS =		prefix="${WRKINST}${PREFIX}"

MAKE_ENV +=		STRIP="/usr/bin/true"

pre-configure:
	perl -pi -e s,'tclsh',${MODTCL_BIN},g ${WRKSRC}/camldep

post-install:
	${INSTALL_DATA} ${WRKSRC}/lib/makeprims.tcl \
		${PREFIX}/lib/obc/makeprims.tcl

do-test:
	cd ${WRKSRC}/test && ${MAKE_PROGRAM} && ./regress && ./bigtest

.include <bsd.port.mk>
