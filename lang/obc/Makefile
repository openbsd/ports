# $OpenBSD: Makefile,v 1.13 2019/07/12 20:47:21 sthen Exp $

BROKEN=		broken by ocaml update: Error: This expression has type string but an expression was expected of type bytes
# "i386 architecture of input file is incompatible with i386:x86-64 output"
ONLY_FOR_ARCHS= i386
USE_WXNEEDED =	Yes

COMMENT =	Oxford Oberon-2 compiler

DISTNAME =	obc-2.9.7
CATEGORIES =	lang

HOMEPAGE =	http://spivey.oriel.ox.ac.uk/corner/Oxford_Oberon-2_compiler

MAINTAINER =	Alexander Shiryaev <shiryaev.a.v@gmail.com>

# BSD-3
PERMIT_PACKAGE =	Yes

MASTER_SITES =	http://spivey.oriel.ox.ac.uk/wiki2/files/download/

MODULES =	lang/ocaml \
		lang/tcl

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 c cairo curses fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0
WANTLIB += gtk-x11-2.0 gtksourceview-2.0 intl m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pthread z

LIB_DEPENDS =	x11/gtksourceview
BUILD_DEPENDS =	${RUN_DEPENDS} \
		${MODTCL_BUILD_DEPENDS} \
		devel/ocaml-ocamlbuild
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
