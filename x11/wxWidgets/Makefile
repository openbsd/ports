# $OpenBSD: Makefile,v 1.72 2021/11/17 10:11:47 op Exp $

COMMENT-main =	C++ cross-platform GUI toolkit
COMMENT-media =	wxMediaCtrl class for wxWidgets
COMMENT-webkit = wxWebView class for wxWidgets

V =		3.0.5.1
REVISION-main =	1
REVISION-media = 0
DISTNAME =	wxWidgets-${V}
PKGNAME-main =	wxWidgets-gtk3-${V}
PKGNAME-media =	wxWidgets-media-${V}

CATEGORIES =	x11
MASTER_SITES =	https://github.com/wxWidgets/wxWidgets/releases/download/v$V/
EXTRACT_SUFX =	.tar.bz2

# XXX always keep those in sync, see SO_VERSION
SHARED_LIBS +=  wx_baseu-3.0              0.1
SHARED_LIBS +=  wx_baseu_net-3.0          0.1
SHARED_LIBS +=  wx_baseu_xml-3.0          0.1
SHARED_LIBS +=  wx_gtk3u_adv-3.0          0.1
SHARED_LIBS +=  wx_gtk3u_aui-3.0          0.1
SHARED_LIBS +=  wx_gtk3u_core-3.0         0.1
SHARED_LIBS +=  wx_gtk3u_gl-3.0           0.1
SHARED_LIBS +=  wx_gtk3u_html-3.0         0.1
SHARED_LIBS +=  wx_gtk3u_media-3.0        0.1
SHARED_LIBS +=  wx_gtk3u_propgrid-3.0     0.1
SHARED_LIBS +=  wx_gtk3u_qa-3.0           0.1
SHARED_LIBS +=  wx_gtk3u_ribbon-3.0       0.1
SHARED_LIBS +=  wx_gtk3u_richtext-3.0     0.1
SHARED_LIBS +=  wx_gtk3u_stc-3.0          0.1
SHARED_LIBS +=  wx_gtk3u_xrc-3.0          0.1
SHARED_LIBS +=  wx_gtk3u_webview-3.0      0.1

HOMEPAGE =	https://www.wxwidgets.org/

# wxWindows (modified LGPL)
# http://www.wxwidgets.org/about/licence/
PERMIT_PACKAGE =	Yes

MULTI_PACKAGES = -main -media -webkit

PSEUDO_FLAVORS =	no_webkit
FLAVOR ?=
.if ${MACHINE_ARCH} == "alpha" || ${MACHINE_ARCH} == "arm" || \
	${MACHINE_ARCH} == "hppa"
FLAVOR += no_webkit
.endif

COMPILER =		base-clang ports-gcc base-gcc

MODULES	=		lang/python
MODPY_RUNDEP =		No
MODPY_ADJ_FILES =	src/stc/gen_iface.py

BUILD_DEPENDS =		devel/cppunit
LIB_DEPENDS =		x11/gtk+3
TEST_DEPENDS = ${BUILD_PKGPATH}>=${V}

LIB_DEPENDS-main =	${LIB_DEPENDS} \
			archivers/libmspack \
			devel/libnotify \
			devel/sdl2

WANTLIB-main += ${COMPILER_LIBCXX} GL GLU SDL2 SM X11 Xxf86vm atk-1.0
WANTLIB-main += c cairo cairo-gobject expat gdk-3 gdk_pixbuf-2.0 gio-2.0
WANTLIB-main += glib-2.0 gobject-2.0 gthread-2.0 gtk-3 harfbuzz iconv intl
WANTLIB-main += jpeg m mspack notify pango-1.0 pangocairo-1.0 png tiff z

LIB_DEPENDS-media =	${LIB_DEPENDS} \
			multimedia/gstreamer1/plugins-base \
			${BASE_PKGPATH},-main>=${V}

WANTLIB-media += ${COMPILER_LIBCXX} SM X11 Xxf86vm atk-1.0 cairo cairo-gobject
WANTLIB-media += gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0 gstbase-1.0
WANTLIB-media += gstreamer-1.0 gstvideo-1.0 gthread-2.0 gtk-3 harfbuzz iconv
WANTLIB-media += intl jpeg m notify pango-1.0 pangocairo-1.0 png tiff
WANTLIB-media += wx_baseu-3.0 wx_gtk3u_core-3.0 z

LIB_DEPENDS-webkit =	${LIB_DEPEDNS} \
			www/webkitgtk4 \
			${BASE_PKGPATH},-main>=${V}

WANTLIB-webkit += ${COMPILER_LIBCXX} SM X11 Xxf86vm atk-1.0 cairo cairo-gobject
WANTLIB-webkit += gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0 gthread-2.0
WANTLIB-webkit += gtk-3 harfbuzz iconv intl jpeg javascriptcoregtk-4.0 m notify
WANTLIB-webkit += pango-1.0 pangocairo-1.0 png soup-2.4 tiff webkit2gtk-4.0
WANTLIB-webkit += wx_baseu-3.0 wx_gtk3u_core-3.0 z

DEBUG_PACKAGES=${BUILD_PACKAGES}

MAKE_FLAGS =	SO_VERSION="${LIBwx_baseu-3.0_VERSION}"

FIX_CRLF_FILES=	src/stc/gen_iface.py

USE_GMAKE =	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS =--disable-backtrace \
		--enable-graphics_ctx \
		--enable-mediactrl \
		--enable-protocols \
		--enable-protocol-http \
		--enable-unicode \
		--with-gtk=3 \
		--with-libmspack \
		--with-opengl \
		--with-sdl

.include <bsd.port.arch.mk>

.if !${BUILD_PACKAGES:M-webkit}
CONFIGURE_ARGS += --disable-webviewwebkit
.endif

CONFIGURE_ENV =	CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib" \
		WXCONFIG_CPPFLAGS="-I${X11BASE}/include" \
		WXCONFIG_LDFLAGS_GUI="-L${X11BASE}/lib"

# XXX: When used in conjunction with PIE, symbol versioning triggers
# weird linking problems in dependent ports
CONFIGURE_ENV += wx_cv_version_script=no

.ifdef DEBUG
CONFIGURE_ARGS += --enable-debug
.endif

pre-configure:
	${SUBST_CMD} ${WRKSRC}/Makefile.in ${WRKSRC}/wx-config.in
	${MODPYTHON_pre-configure}

post-install:
	${MODPY_BIN} -m compileall ${PREFIX}/share/bakefile/presets/wx_presets.py

do-test:
	@cd ${WRKSRC}/tests && \
		${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} ${MAKE_FLAGS} && ./test -d

.include <bsd.port.mk>
