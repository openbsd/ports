# $OpenBSD: Makefile,v 1.20 2007/02/20 11:47:07 espie Exp $

COMMENT-main=	"graph drawing software"

DISTNAME=	graphviz-2.12
PKGNAME-main=	${DISTNAME}
CATEGORIES=	math devel graphics
MULTI_PACKAGES=	-main

# to let update-patches work in a simpler way
PATCHORIG=	.orig2

MASTER_SITES=	${HOMEPAGE}pub/graphviz/ARCHIVE/

SHARED_LIBS +=	gvplugin_core        0.0      # .3.0
SHARED_LIBS +=	gvplugin_gd          0.0      # .3.0
SHARED_LIBS +=	gvplugin_pango       0.0      # .3.0
SHARED_LIBS +=	gvplugin_dot_layout  0.0      # .3.0
SHARED_LIBS +=	gvplugin_neato_layout 0.0      # .3.0
SHARED_LIBS +=	gvplugin_xlib        0.0      # .3.0
SHARED_LIBS +=	gvplugin_gtk         0.0      # .3.0
SHARED_LIBS +=	gvplugin_dot_layout  0.0      # .3.0
SHARED_LIBS +=	gvplugin_neato_layout 0.0      # .3.0

SHARED_LIBS +=	cdt                  0.0      # .3.0
SHARED_LIBS +=	graph                1.0      # .3.0
SHARED_LIBS +=	agraph               0.1      # .3.0
SHARED_LIBS +=	pathplan             1.0      # .3.0
SHARED_LIBS +=	gvc                  0.0      # .3.0
SHARED_LIBS +=	gvc_builtins         0.0      # .3.0
SHARED_LIBS +=	expr                 0.0      # .3.0
SHARED_LIBS +=	gdtclft              1.0      # .0.0
SHARED_LIBS +=	tcldot               1.0      # .0.0
SHARED_LIBS +=	tcldot_builtin       1.0      # .0.0
SHARED_LIBS +=	tclplan              1.0      # .0.0
SHARED_LIBS +=	tkspline             1.0      # .0.0
SHARED_LIBS +=	gv_guile             0.0      # .0.0
SHARED_LIBS +=	gv_perl              0.0      # .0.0
SHARED_LIBS +=	gv_tcl               0.0      # .0.0
SHARED_LIBS +=	graph                1.0      # .3.0
SHARED_LIBS +=	agraph               0.1      # .3.0
SHARED_LIBS +=	gvc                  0.0      # .3.0
SHARED_LIBS +=	gvc_builtins         0.0      # .3.0
SHARED_LIBS +=	tcldot               1.0      # .0.0
SHARED_LIBS +=	tclplan              1.0      # .0.0
SHARED_LIBS +=	gv_guile             0.0      # .0.0
SHARED_LIBS +=	gv_perl              0.0      # .0.0
SHARED_LIBS +=	gv_tcl               0.0      # .0.0

HOMEPAGE=	http://www.graphviz.org/

MAINTAINER=	Marc Espie <espie@openbsd.org>

# Common public licence
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		ICE SM X11 Xaw Xext Xmu Xpm Xt c fontconfig freetype \
			m z Xrender

MODULES=	converters/libiconv devel/gettext
LIB_DEPENDS=	expat::textproc/expat \
		jpeg.>=62::graphics/jpeg \
		png.>=2::graphics/png \
		ltdl::devel/libtool,-ltdl \
		tk84::x11/tk/8.4 \
		gd.>=20.34:gd->=2.0.34:graphics/gd

# cairo stuff
LIB_DEPENDS+= 	gdk-x11-2.0,gdk_pixbuf-2.0,gtk-x11-2.0::x11/gtk+2

WANTLIB+=	cairo.>=5 glitz pango-1.0 pangocairo-1.0 pangoft2-1.0 \
		gmodule-2.0 glib-2.0 gobject-2.0

# gnome stuff
LIB_DEPENDS+=	gnomeui-2::x11/gnome/libgnomeui

WANTLIB+=	atk-1.0 crypto gthread-2.0 ssl \
		ORBit-2 ORBitCosNaming-2 art_lgpl_2 audiofile bonobo-2 \
		bonobo-activation bonoboui-2 esd gconf-2 gnome-2 \
		gnome-keyring gnomecanvas-2 gnomevfs-2 popt xml2

BUILD_DEPENDS=	:tk-8.4.*:x11/tk/8.4 \
		:tcl->=8.4.7p5:lang/tcl/8.4 \
		::devel/swig
RUN_DEPENDS=	${BUILD_DEPENDS}

USE_X11=	Yes
USE_LIBTOOL=	Yes
AUTOCONF_VERSION=2.59
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-lua \
		--disable-io \
		--disable-java \
		--disable-ocaml \
		--disable-php \
		--disable-perl \
		--disable-python \
		--disable-ruby \
		--disable-rpath \
		--with-gd

CONFIGURE_ENV=	CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include" \
		LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib" \
		PKG_CONFIG=/usr/bin/pkg-config

DOCBASE=	${PREFIX}/share/doc/graphviz
EXBASE=		${PREFIX}/share/examples/graphviz

MAKE_FLAGS=	TCL_STUB_LIB_SPEC='-L${LOCALBASE}/lib -ltclstub84_pic' \
		TK_STUB_LIB_SPEC='-L${LOCALBASE}/lib -ltkstub84_pic'

FAKE_FLAGS=	htmldir="${DOCBASE}/html" \
		pdfdir="${DOCBASE}/pdf" \
		txtdir="${DOCBASE}" \
		demodir="${EXBASE}/demo" \
		directeddir="${EXBASE}/graphs/directed" \
		leftydir="${EXBASE}/lefty" \
		pathplanexampledir="${EXBASE}/demo/pathplan_data" \
		undirecteddir="${EXBASE}/graphs/undirected" \
		${MAKE_FLAGS}

post-build:
.for CMD in dotty lneato
	echo "#! /bin/ksh" >${WRKBUILD}/cmd/${CMD}/${CMD}
	echo ': $${LEFTYPATH:=$(LOCALBASE)/share/examples/graphviz/lefty}' >>${WRKBUILD}/cmd/${CMD}/${CMD}
	echo 'export LEFTYPATH' >>${WRKBUILD}/cmd/${CMD}/${CMD}
	cat ${WRKBUILD}/cmd/${CMD}/${CMD}.ksh >>${WRKBUILD}/cmd/${CMD}/${CMD}
.endfor

post-install:
	cd ${PREFIX}/share/examples/graphviz/demo && \
	    perl -pi -e 's/^exec tclsh/exec tclsh8.4/' entities gcat
	cd ${PREFIX}/share/examples/graphviz/demo && \
	    perl -pi -e 's/^exec wish/exec wish8.4/' doted pathplan spline

.include <bsd.port.mk>
