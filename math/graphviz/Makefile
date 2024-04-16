COMMENT-main=	graph drawing software
COMMENT-tcl=	Tcl bindings to graphviz

V=		10.0.1
DISTNAME=	graphviz-$V
PKGNAME-main=	${DISTNAME}
PKGNAME-tcl=	graphviz-tcl-$V
CATEGORIES=	math devel graphics

MULTI_PACKAGES=	-main -tcl

SITES=		https://gitlab.com/api/v4/projects/4207231/packages/generic/graphviz-releases/$V/

SHARED_LIBS += cdt			3.0 # 5.0
SHARED_LIBS += xdot			1.0 # 4.0
SHARED_LIBS += cgraph			2.0 # 6.0
SHARED_LIBS += pathplan			4.0 # 4.0
SHARED_LIBS += gvc			3.0 # 6.0
SHARED_LIBS += gvpr			2.0 # 2.0

# plugins loaded by dlopen() in graphviz, not traditional shared libraries
# linked by other software. following upstream numbering reduces the patches
# needed to handle this to a simple .0 addition in configure.ac.
GVPLUGIN_VERSION =	7.0
.for plugin in \
	gvplugin_core gvplugin_gd gvplugin_gdk gvplugin_gtk gvplugin_kitty \
	gvplugin_pango gvplugin_rsvg gvplugin_xlib \
	gvplugin_dot_layout gvplugin_neato_layout gvplugin_vt gvplugin_webp \
	gvplugin_poppler
SHARED_LIBS += ${plugin} ${GVPLUGIN_VERSION}
.endfor

HOMEPAGE=	https://graphviz.org/

MAINTAINER=	Edd Barrett <edd@openbsd.org>

# Eclipse Public License v1.0
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} X11 Xau Xdmcp Xext Xrender cairo
WANTLIB += expat ffi fontconfig freetype fribidi gd gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 graphite2 harfbuzz iconv intl
WANTLIB += jpeg ltdl lzma m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre2-8 pixman-1 png sharpyuv tiff webp xcb xcb-render xcb-shm
WANTLIB += z zstd

WANTLIB-main += ${WANTLIB}
WANTLIB-main += Xcomposite Xcursor Xdamage Xfixes Xi Xinerama Xrandr
WANTLIB-main += c cairo-gobject gc gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB-main += gmp guile-2.2 lcms2 openjp2 perl poppler
WANTLIB-main += poppler-glib rsvg-2 unistring xml2

# "extra" libtclXX: tcldot is built against Tcl headers
WANTLIB-tcl += ${WANTLIB} ${MODTCL_WANTLIB}
WANTLIB-tcl += cdt cgraph gvc pathplan xdot

COMPILER=	base-clang ports-gcc

MODULES=	lang/tcl \
		perl
LIB_DEPENDS=	graphics/jpeg \
		graphics/png \
		devel/libtool,-ltdl \
		graphics/gd>=2.0.34 \
		x11/gtk+2 \
		x11/gnome/librsvg \
		graphics/graphite2 \
		devel/harfbuzz \
		print/poppler \
		lang/guile2
LIB_DEPENDS-tcl=math/graphviz,-main \
		${MODTCL_LIB_DEPENDS}
BUILD_DEPENDS=	devel/swig
TEST_DEPENDS=	${FULLPKGNAME}:math/graphviz
MODTCL_VERSION=	8.6

USE_GMAKE=	Yes
USE_GROFF=	Yes
CONFIGURE_STYLE= autoreconf
# don't recurse into libltdl dir, there is some strange issue with
# libltdl/configure being readonly
AUTORECONF=	autoreconf --force --install --no-recursive
AUTOCONF_VERSION= 2.69
AUTOMAKE_VERSION= 1.16

LIBTOOL_FLAGS +=	--tag=disable-static

CONFIGURE_ARGS=	--disable-man-pdfs \
		--enable-swig \
		--disable-sharp \
		--disable-d \
		--disable-go \
		--enable-guile \
		--disable-io \
		--disable-java \
		--disable-javascript \
		--disable-lua \
		--disable-ocaml \
		--enable-perl \
		--disable-php \
		--disable-python \
		--disable-python3 \
		--disable-quartz \
		--disable-r \
		--disable-ruby \
		--enable-tcl

CONFIGURE_ARGS+= --with-tclsh=${MODTCL_BIN} \
		--with-ltdl-include=${LOCALBASE}/include \
		--with-ltdl-lib=${LOCALBASE}/lib \
		--without-devil \
		--without-ghostscript \
		--without-lasi \
		--without-gts \
		--without-ann \
		--without-glade \
		--without-qt \
		--with-gd \
		--with-gdincludedir=${LOCALBASE}/include \
		--with-gdlibdir=${LOCALBASE}/lib \
		--without-glut

CONFIGURE_ENV=	CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include" \
		LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib" \
		TCLCONFIG=${MODTCL_CONFIG} \
		GUILE=guile2.2

DOCBASE=	${PREFIX}/share/doc/graphviz
EXBASE=		${PREFIX}/share/examples/graphviz

MAKE_FLAGS=	TCL_STUB_LIB_SPEC='-L${LOCALBASE}/lib \
		-ltclstub${MODTCL_VERSION:S/.//}_pic'

# needs "criterion" to actually do anything
TEST_DEPENDS=	${FULLPKGNAME}:${FULLPKGPATH}
TEST_TARGET=	check

FAKE_FLAGS=	htmldir="${DOCBASE}/html" \
		pdfdir="${DOCBASE}/pdf" \
		txtdir="${DOCBASE}" \
		demodir="${EXBASE}/demo" \
		directeddir="${EXBASE}/graphs/directed" \
		pathplanexampledir="${EXBASE}/demo/pathplan_data" \
		undirecteddir="${EXBASE}/graphs/undirected" \
		pkgtcldir="${MODTCL_TCLDIR}/graphviz"

# Ensure plugin version check works.
SUBST_VARS +=	GVPLUGIN_VERSION
pre-configure:
	${SUBST_CMD} ${WRKSRC}/lib/gvc/gvconfig.c

post-install:
# generate config6 from fake-install directory, so we don't need
# @exec or a pregenerated file
	GVBINDIR=${PREFIX}/lib/graphviz \
	    LD_LIBRARY_PATH=${PREFIX}/lib \
	    ${PREFIX}/bin/dot -v -c

# We never want to install .la files.
	find ${PREFIX}/lib/ -name '*.la' -delete

# Second copy of tcl extensions isn't needed
	rm -R ${PREFIX}/lib/tcl${MODTCL_VERSION}

.include <bsd.port.mk>
