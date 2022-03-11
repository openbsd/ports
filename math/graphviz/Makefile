COMMENT-main=	graph drawing software

DISTNAME=	graphviz-2.42.3
PKGNAME-main=	${DISTNAME}
REVISION=	0
CATEGORIES=	math devel graphics

# there is only one multi-package due to legacy, but maybe more
# will appear in the form of language bindings.
MULTI_PACKAGES=	-main

# to let update-patches work in a simpler way
PATCHORIG=	.orig2

MASTER_SITES=	https://www2.graphviz.org/Packages/stable/portable_source/

SHARED_LIBS += gvplugin_core		2.0 # 6.0
SHARED_LIBS += gvplugin_gd		2.0 # 6.0
SHARED_LIBS += gvplugin_pango		2.0 # 6.0
SHARED_LIBS += gvplugin_dot_layout	2.0 # 6.0
SHARED_LIBS += gvplugin_neato_layout	2.0 # 6.0
SHARED_LIBS += gvplugin_xlib		2.0 # 6.0
SHARED_LIBS += gvplugin_gtk		2.0 # 6.0
SHARED_LIBS += gvplugin_rsvg		1.0 # 6.0
SHARED_LIBS += gvplugin_gdk		1.0 # 6.0
SHARED_LIBS += gvplugin_poppler		1.0 # 6.0
SHARED_LIBS += gvplugin_visio		0.0 # 6.0
SHARED_LIBS += gvplugin_webp		0.0 # 6.0

SHARED_LIBS += cdt			2.0 # 5.0
SHARED_LIBS += pathplan			3.0 # 4.0
SHARED_LIBS += gvc			2.0 # 6.0
SHARED_LIBS += cgraph			1.0 # 6.0
SHARED_LIBS += gvpr			1.0 # 2.0
SHARED_LIBS += xdot			1.0 # 4.0
SHARED_LIBS += gdtclft			4.0 # unknown
SHARED_LIBS += tcldot			4.0 # unknown
SHARED_LIBS += tcldot_builtin		4.0 # unknown
SHARED_LIBS += tclplan			4.0 # unknown
SHARED_LIBS += lab_gamut		0.0 # 1.0

HOMEPAGE=	http://www.graphviz.org/

MAINTAINER=	Edd Barrett <edd@openbsd.org>

# Eclipse Public License v1.0
PERMIT_PACKAGE=	Yes

WANTLIB += ICE SM X11 Xau Xaw Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xmu Xpm Xrandr Xrender
WANTLIB += Xt atk-1.0 c cairo cairo-gobject expat ffi fontconfig
WANTLIB += freetype gd gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gmp gobject-2.0 graphite2 gtk-x11-2.0
WANTLIB += guile harfbuzz iconv intl jpeg lcms2 ltdl lzma m openjp2 pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre perl pixman-1 png
WANTLIB += poppler poppler-glib pthread rsvg-2 ${COMPILER_LIBCXX}
WANTLIB += tiff webp xcb xcb-render xcb-shm xml2 z zstd fribidi

# "extra" - tcldot is built against Tcl headers
WANTLIB += ${MODTCL_WANTLIB}

COMPILER=	base-clang ports-gcc base-gcc

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
		lang/guile \
		${MODTCL_LIB_DEPENDS}
BUILD_DEPENDS=	devel/swig
TEST_DEPENDS=	${FULLPKGNAME}:math/graphviz

USE_GMAKE=	Yes
USE_GROFF=	Yes
CONFIGURE_STYLE= autoreconf
# don't recurse into libltdl dir, there is some strange issue with
# libltdl/configure being readonly
AUTORECONF=	autoreconf --force --install --no-recursive
AUTOCONF_VERSION= 2.69
AUTOMAKE_VERSION= 1.16

LIBTOOL_FLAGS +=	--tag=disable-static

# Note: --with-tclsh is misspelled "--with-tcl" in configure's help output
CONFIGURE_ARGS=	--enable-tcl=yes \
		--enable-perl \
		--enable-guile \
		--with-tclsh=${MODTCL_BIN} \
		--disable-lua \
		--disable-io \
		--disable-java \
		--disable-ocaml \
		--disable-php \
		--disable-python \
		--disable-python2 \
		--disable-python3 \
		--disable-ruby \
		--disable-rpath \
		--disable-sharp \
		--disable-r \
		--disable-gts \
		--disable-go \
		--without-ghostscript \
		--without-devil \
		--without-lasi \
		--without-qt \
		--without-glut \
		--with-gd \
		--with-gdincludedir=${LOCALBASE}/include \
		--with-gdlibdir=${LOCALBASE}/lib \
		--with-ltdl-include=${LOCALBASE}/include \
		--with-ltdl-lib=${LOCALBASE}/lib

# hardcodes -lstdc++
CONFIGURE_ARGS+= --without-ipsepcola

CONFIGURE_ENV=	CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include" \
		LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib" \
		TCLCONFIG=${MODTCL_CONFIG}

DOCBASE=	${PREFIX}/share/doc/graphviz
EXBASE=		${PREFIX}/share/examples/graphviz

MAKE_FLAGS=	TCL_STUB_LIB_SPEC='-L${LOCALBASE}/lib \
		-ltclstub${MODTCL_VERSION:S/.//}_pic'

CFLAGS +=	-DLT_DEBUG_LOADERS

FAKE_FLAGS=	htmldir="${DOCBASE}/html" \
		pdfdir="${DOCBASE}/pdf" \
		txtdir="${DOCBASE}" \
		demodir="${EXBASE}/demo" \
		directeddir="${EXBASE}/graphs/directed" \
		leftydir="${EXBASE}/lefty" \
		pathplanexampledir="${EXBASE}/demo/pathplan_data" \
		undirecteddir="${EXBASE}/graphs/undirected" \
		pkgtcldir="${MODTCL_TCLDIR}/graphviz"

post-build:
.for CMD in dotty lneato
	echo "#! /bin/ksh" >${WRKBUILD}/cmd/${CMD}/${CMD}
	echo ': $${LEFTYPATH:=$(LOCALBASE)/share/examples/graphviz/lefty}' >>${WRKBUILD}/cmd/${CMD}/${CMD}
	echo 'export LEFTYPATH' >>${WRKBUILD}/cmd/${CMD}/${CMD}
	cat ${WRKBUILD}/cmd/${CMD}/${CMD}.ksh >>${WRKBUILD}/cmd/${CMD}/${CMD}
.endfor

post-install:
# install pre-generated config6 to avoid @exec/@unexec-delete
	${SUBST_CMD} -m 0644 -c ${FILESDIR}/config6 ${PREFIX}/lib/graphviz/config6
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/lib/graphviz/config6
# Once upon a time, graphviz used to install the symlink:
# ${PREFIX}/lib/tcl${MODTCL_VERSION}/graphviz -> ${PREFIX}/lib/tcl/graphviz
# Now it installs a copy of the dir, however, 'pkg_add -u' can't update a
# symlink to a dir, so we manually hack back the old symlink.
	rm -Rf ${PREFIX}/lib/tcl${MODTCL_VERSION}/graphviz
	ln -s ${TRUEPREFIX}/lib/tcl/graphviz \
		${PREFIX}/lib/tcl${MODTCL_VERSION}/graphviz
# We never want to install .la files.
	find ${PREFIX}/lib/ -name '*.la' -delete

TEST_DEPENDS=	shells/ksh93 \
		${FULLPKGNAME}:${FULLPKGPATH}
TEST_TARGET=	check

pre-test:
	sed -i s,#!/bin/ksh,#!/${LOCALBASE}/bin/ksh93, ${WRKSRC}/rtest/rtest.sh

# NOTE: When updating this port run 'dot -c' (as root) to generate a
# /usr/local/lib/graphviz/config6. Then substitute all hard-coded library
# versions to ${LIBlibname_VERSION}. Put the resulting file in files/config6.
#
# A vim regex for doing the substitution:
# :%s/^lib\(.*\)\.so\.[0-9]\+\.[0-9]\+/lib\1.so.${LIB\1_VERSION}/g

.include <bsd.port.mk>
