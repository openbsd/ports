# $OpenBSD: Makefile,v 1.57 2014/04/28 22:03:11 sthen Exp $

COMMENT-main=	graph drawing software

DISTNAME=	graphviz-2.36.0
REVISION=	1
PKGNAME-main=	${DISTNAME}
CATEGORIES=	math devel graphics

# there is only one multi-package due to legacy, but maybe more
# will appear in the form of language bindings.
MULTI_PACKAGES=	-main

# to let update-patches work in a simpler way
PATCHORIG=	.orig2

MASTER_SITES=	${HOMEPAGE}pub/graphviz/ARCHIVE/

SHARED_LIBS += gvplugin_core		1.0 # 6.0
SHARED_LIBS += gvplugin_gd		1.0 # 6.0
SHARED_LIBS += gvplugin_pango		1.0 # 6.0
SHARED_LIBS += gvplugin_dot_layout	1.0 # 6.0
SHARED_LIBS += gvplugin_neato_layout	1.0 # 6.0
SHARED_LIBS += gvplugin_xlib		1.0 # 6.0
SHARED_LIBS += gvplugin_gtk		1.0 # 6.0
SHARED_LIBS += gvplugin_rsvg		0.0 # 6.0
SHARED_LIBS += gvplugin_gdk		0.0 # 6.0
SHARED_LIBS += gvplugin_poppler		0.0 # 6.0

SHARED_LIBS += cdt			1.0 # 5.0
SHARED_LIBS += pathplan			2.0 # 4.0
SHARED_LIBS += gvc			1.0 # 6.0
SHARED_LIBS += cgraph			0.0 # 6.0
SHARED_LIBS += gvpr			0.0 # 2.0
SHARED_LIBS += xdot			0.0 # 4.0
SHARED_LIBS += gdtclft			3.0 # unknown
SHARED_LIBS += tcldot			3.0 # unknown
SHARED_LIBS += tcldot_builtin		3.0 # unknown
SHARED_LIBS += tclplan			3.0 # unknown
SHARED_LIBS += tkspline			3.0 # unknown

HOMEPAGE=	http://www.graphviz.org/

MAINTAINER =	Edd Barrett <edd@openbsd.org>

# Eclipse Public License v1.0
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xau Xaw Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xft Xi Xinerama Xmu Xpm Xrandr Xrender
WANTLIB += Xss Xt atk-1.0 c cairo croco-0.6 expat ffi fontconfig
WANTLIB += freetype gd gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gmp gobject-2.0 graphite2 gthread-2.0 gtk-x11-2.0
WANTLIB += guile harfbuzz jpeg lcms2 ltdl m openjpeg pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre perl pixman-1 png
WANTLIB += poppler poppler-glib pthread pthread-stubs rsvg-2 stdc++
WANTLIB += tiff tk85 util vpx xcb xcb-render xcb-shm xml2 z

MODULES=	devel/gettext \
		x11/tk \
		perl
LIB_DEPENDS =	graphics/jpeg \
		graphics/png \
		devel/libtool,-ltdl \
		graphics/gd>=2.0.34 \
		x11/gtk+2 \
		www/libcroco \
		x11/gnome/librsvg \
		graphics/graphite2 \
		devel/harfbuzz \
		print/poppler \
		${MODTK_LIB_DEPENDS}
RUN_DEPENDS=	lang/guile
BUILD_DEPENDS=	devel/swig \
		lang/guile
TEST_DEPENDS =	${FULLPKGNAME}:math/graphviz

USE_GMAKE =	Yes
USE_GROFF =	Yes
CONFIGURE_STYLE=gnu
# Note: --with-tclsh is misspelled "--with-tcl" in configure's help output
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--enable-tcl=yes \
		--enable-perl \
		--enable-guile \
		--with-tclsh=${MODTCL_BIN} \
		--with-wish=${MODTK_BIN} \
		--disable-lua \
		--disable-io \
		--disable-java \
		--disable-ocaml \
		--disable-php \
		--disable-python \
		--disable-ruby \
		--disable-rpath \
		--disable-sharp \
		--disable-R \
		--disable-gts \
		--without-ghostscript \
		--without-devil \
		--without-lasi \
		--without-qt \
		--without-glut \
		--with-gd

CONFIGURE_ENV=	CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include" \
		LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib" \
		TCLCONFIG=${MODTCL_CONFIG} \
		TKCONFIG=${MODTK_CONFIG}

DOCBASE=	${PREFIX}/share/doc/graphviz
EXBASE=		${PREFIX}/share/examples/graphviz

MAKE_FLAGS=	TCL_STUB_LIB_SPEC='-L${LOCALBASE}/lib -ltclstub85_pic' \
		TK_STUB_LIB_SPEC='-L${LOCALBASE}/lib -ltkstub85_pic'

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
	${SUBST_CMD} -c ${FILESDIR}/config6 ${PREFIX}/lib/graphviz/config6
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/lib/graphviz/config6
# Once upon a time, graphviz used to install the symlink:
# ${PREFIX}/lib/tcl${MODTCL_VERSION}/graphviz -> ${PREFIX}/lib/tcl/graphviz
# Now it installs a copy of the dir, however, 'pkg_add -u' can't update a
# symlink to a dir, so we manually hack back the old symlink.
	rm -Rf ${PREFIX}/lib/tcl${MODTCL_VERSION}/graphviz
	ln -s ${TRUEPREFIX}/lib/tcl/graphviz \
		${PREFIX}/lib/tcl${MODTCL_VERSION}/graphviz

# Local tests for OpenBSD
# Can't run built in tests, as requires ksh93 (some specific arguments
# to the typeset builtin). Currently, there is no port.
TEST_TMP=${WRKDIR}/test_tmp
do-test:
	mkdir -p ${TEST_TMP}
	cd ${FILESDIR}/tests && for i in *-test.* run_tests.sh; do \
		${SUBST_CMD} -c $${i} ${TEST_TMP}/$${i}; \
	done
	cd ${TEST_TMP} && /bin/sh ./run_tests.sh

# NOTE: When updating this port:
#  * Check we have commented .la and .a corresponding to unversioned .so files
#    in the packing list.
#  * Run 'dot -c' manually and subsitute all hardcoded library versions to
#    ${LIB_libname_VERSION}. Put the file in files/config6

.include <bsd.port.mk>
