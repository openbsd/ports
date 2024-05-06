COMMENT-main =		C++ cross-platform GUI toolkit
COMMENT-media =		wxMediaCtrl class for wxWidgets
COMMENT-webview =	wxWebView class for wxWidgets

V =			3.2.4
DISTNAME =		wxWidgets-${V}
PKGNAME-main =		wxWidgets-gtk3-${V}
PKGNAME-media =		wxWidgets-media-${V}
PKGNAME-webview =	wxWidgets-webview-${V}
REVISION-media =	0
REVISION-webview =	0

REVISION-main =		1

CATEGORIES =		x11
SITES =			https://github.com/wxWidgets/wxWidgets/releases/download/v$V/
EXTRACT_SUFX =		.tar.bz2

MAINTAINER =		Antoine Jacoutot <ajacoutot@openbsd.org>

SO_VERSION =		0.1
.for _lib in \
wx_baseu-3.2 wx_baseu_net-3.2 wx_baseu_xml-3.2 wx_gtk3u_adv-3.2 wx_gtk3u_aui-3.2 wx_gtk3u_core-3.2 wx_gtk3u_gl-3.2 wx_gtk3u_html-3.2 wx_gtk3u_media-3.2 wx_gtk3u_propgrid-3.2 wx_gtk3u_qa-3.2 wx_gtk3u_ribbon-3.2 wx_gtk3u_richtext-3.2 wx_gtk3u_stc-3.2 wx_gtk3u_xrc-3.2 wx_gtk3u_webview-3.2
SHARED_LIBS +=		${_lib} ${SO_VERSION}
.endfor

HOMEPAGE =		https://www.wxwidgets.org/

# wxWindows (modified LGPL)
# http://www.wxwidgets.org/about/licence/
PERMIT_PACKAGE =	Yes

MULTI_PACKAGES =	-main -media -webview

PSEUDO_FLAVORS =	no_webview
FLAVOR ?=
.if ${MACHINE_ARCH} == "alpha" || ${MACHINE_ARCH} == "arm" || \
	${MACHINE_ARCH} == "hppa"
FLAVOR +=		no_webview
.endif

COMPILER =		base-clang ports-gcc base-gcc

USE_GMAKE =		Yes

MODULES	=		lang/python
MODPY_RUNDEP =		No
MODPY_ADJ_FILES =	src/stc/gen_iface.py

BUILD_DEPENDS =		devel/cppunit
TEST_DEPENDS =		${BUILD_PKGPATH}>=${V}

LIB_DEPENDS-main =	archivers/libmspack \
			devel/libnotify \
			devel/sdl2 \
			net/curl \
			textproc/enchant2 \
			textproc/gspell \
			x11/gnome/libsecret \
			x11/gtk+3 \
			x11/xkbcommon

WANTLIB-main += ${COMPILER_LIBCXX} EGL GL GLU SDL2 SM X11 Xtst Xxf86vm
WANTLIB-main += atk-1.0 c cairo cairo-gobject curl enchant-2 expat
WANTLIB-main += fontconfig freetype gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB-main += gobject-2.0 gspell-1 gthread-2.0 gtk-3 harfbuzz iconv
WANTLIB-main += intl jpeg lzma m mspack notify pango-1.0 pangocairo-1.0
WANTLIB-main += pangoft2-1.0 pcre2-32 png secret-1 tiff z execinfo
WANTLIB-main += wayland-client wayland-egl xkbcommon

LIB_DEPENDS-media =	multimedia/gstreamer1/plugins-base \
			multimedia/gstreamer1/plugins-bad \
			${BASE_PKGPATH},-main>=${V}

WANTLIB-media += ${COMPILER_LIBCXX} SDL2 SM X11 Xtst Xxf86vm atk-1.0
WANTLIB-media += cairo cairo-gobject curl enchant-2 fontconfig freetype
WANTLIB-media += gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0 gspell-1
WANTLIB-media += gstbase-1.0 gstreamer-1.0 gstvideo-1.0 gthread-2.0
WANTLIB-media += gtk-3 harfbuzz iconv intl jpeg lzma m notify pango-1.0
WANTLIB-media += pangocairo-1.0 pangoft2-1.0 pcre2-32 png secret-1 tiff
WANTLIB-media += wx_baseu-3.2 wx_gtk3u_core-3.2 z execinfo gstplayer-1.0
WANTLIB-media += xkbcommon

LIB_DEPENDS-webview =	www/webkitgtk4,webkitgtk41 \
			${BASE_PKGPATH},-main>=${V}

WANTLIB-webview += ${COMPILER_LIBCXX} SDL2 SM X11 Xtst Xxf86vm atk-1.0
WANTLIB-webview += cairo cairo-gobject curl enchant-2 execinfo fontconfig
WANTLIB-webview += freetype gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB-webview += gobject-2.0 gspell-1 gthread-2.0 gtk-3 harfbuzz iconv
WANTLIB-webview += intl javascriptcoregtk-4.1 jpeg lzma m notify pango-1.0
WANTLIB-webview += pangocairo-1.0 pangoft2-1.0 pcre2-32 png secret-1 soup-3.0
WANTLIB-webview += tiff webkit2gtk-4.1 wx_baseu-3.2 wx_gtk3u_core-3.2
WANTLIB-webview += xkbcommon z

DEBUG_PACKAGES =	${BUILD_PACKAGES}

MAKE_FLAGS =		SO_VERSION="${SO_VERSION}"

FIX_CRLF_FILES=		src/stc/gen_iface.py

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--disable-option-checking \
			--enable-graphics_ctx \
			--enable-mediactrl \
			--enable-protocols \
			--enable-protocol-http \
			--enable-unicode \
			--with-gtk=3 \
			--with-libmspack \
			--with-liblzma \
			--with-opengl \
			--without-libjbig \
			--with-sdl

.include <bsd.port.arch.mk>

.if !${BUILD_PACKAGES:M-webview}
CONFIGURE_ARGS +=	--disable-webviewwebkit
.endif

CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib" \
			WXCONFIG_CPPFLAGS="-I${X11BASE}/include" \
			WXCONFIG_LDFLAGS_GUI="-L${X11BASE}/lib"

# XXX: When used in conjunction with PIE, symbol versioning triggers
# weird linking problems in dependent ports
CONFIGURE_ENV +=	wx_cv_version_script=no

.ifdef DEBUG
CONFIGURE_ARGS +=	--enable-debug
.endif

pre-configure:
	${SUBST_CMD} ${WRKSRC}/wx-config.in
	${MODPYTHON_pre-configure}

post-install:
	${MODPY_BIN} -m compileall ${PREFIX}/share/bakefile/presets/wx_presets.py

do-test:
	@cd ${WRKSRC}/tests && \
		${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} ${MAKE_FLAGS} && ./test -d

.include <bsd.port.mk>
