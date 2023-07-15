# when gtk+4 support is added, split into multi packages (gtk+{2,3,4})

COMMENT-main =		intelligent input bus framework
COMMENT-gtk2 =		IBus IM module for GTK2
COMMENT-gtk3 =		IBus IM module for GTK3
COMMENT-gtk4 =		IBus IM module for GTK4

GH_PROJECT =		ibus
GH_ACCOUNT =		ibus
#GH_TAGNAME =		1.5.28

#PKGNAME-main =		ibus-${GH_TAGNAME}
#PKGNAME-gtk2 =		ibus-gtk2-${GH_TAGNAME}
#PKGNAME-gtk3 =		ibus-gtk3-${GH_TAGNAME}
#PKGNAME-gtk4 =		ibus-gtk4-${GH_TAGNAME}

### BEGIN XXX bring changes from 1.5.28 and add a patch to:
# Fix sync ibus_input_context_process_key_event()
# https://github.com/ibus/ibus/pull/2532
# https://github.com/ibus/ibus/issues/2486
V =			1.5.28.20230714
GH_COMMIT =		580ea41b303d4f2dc5ccc64d39612c57cd7c5a0e
MASTER_SITES0 =		https://github.com/ibus/ibus/pull/2532/commits/
PATCHFILES =		139e0be07bfbc96d5ff95e5f5ebd760fbc7d94c0.diff:0 \
			e495f8068380856c01fd22ceebb9398072fd65d8.diff:0 \
			3670faf74a7b4594ceda3b4a8c01515840cc1991.diff:0
PATCH_DIST_STRIP =	-p1
DISTNAME =		ibus-${V}
PKGNAME-main =		ibus-${V}
PKGNAME-gtk2 =		ibus-gtk2-${V}
PKGNAME-gtk3 =		ibus-gtk3-${V}
PKGNAME-gtk4 =		ibus-gtk4-${V}
### END

SHARED_LIBS +=  ibus-1.0             4.4      # 5.528

CATEGORIES =		inputmethods chinese japanese korean

HOMEPAGE =		https://github.com/ibus/ibus/wiki

# LGPLv2+
PERMIT_PACKAGE =	Yes

MULTI_PACKAGES =	-main -gtk2 -gtk3 -gtk4

WANTLIB += ${COMPILER_LIBCXX} X11 Xau Xcursor Xdamage Xdmcp Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender cairo expat ffi fontconfig
WANTLIB += freetype fribidi gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 graphite2 harfbuzz iconv intl m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre2-8 pixman-1 png xcb xcb-render
WANTLIB += xcb-shm z execinfo jpeg

WANTLIB-main += ${WANTLIB}
WANTLIB-main += atk-1.0 atk-bridge-2.0 c cairo-gobject dconf epoxy
WANTLIB-main += gdk-3 gthread-2.0 gtk-3 Xcomposite notify atspi dbus-1

WANTLIB-gtk2 += ${WANTLIB}
WANTLIB-gtk2 += atk-1.0 dbus-1 gdk-x11-2.0 gtk-x11-2.0 ibus-1.0
WANTLIB-gtk2 += Xcomposite

WANTLIB-gtk3 += ${WANTLIB}
WANTLIB-gtk3 += Xcomposite atk-1.0 atk-bridge-2.0 cairo-gobject dbus-1
WANTLIB-gtk3 += epoxy gdk-3 gtk-3 ibus-1.0 atspi

WANTLIB-gtk4 += ${WANTLIB}
WANTLIB-gtk4 += cairo-gobject cairo-script-interpreter dbus-1 epoxy
WANTLIB-gtk4 += graphene-1.0 gtk-4 ibus-1.0 lzo2 lzma tiff zstd dbus-1

MODULES =		devel/dconf \
			lang/python \
			textproc/intltool

BUILD_DEPENDS =		devel/iso-codes \
			devel/py-gobject3${MODPY_FLAVOR} \
			lang/vala \
			textproc/unicode-ucd

RUN_DEPENDS-main =	${RUN_DEPENDS} \
			devel/desktop-file-utils \
			devel/iso-codes \
			x11/gtk+4,-guic

# MODPY_LIBDIR/gi/overrides/
RUN_DEPENDS-main +=	devel/py-gobject3${MODPY_FLAVOR}

LIB_DEPENDS-main =	devel/libnotify \
			x11/gtk+3

RUN_DEPENDS-gtk2 =	# empty
LIB_DEPENDS-gtk2 =	${BASE_PKGPATH},-main \
			x11/gtk+2

RUN_DEPENDS-gtk3 =	# empty
LIB_DEPENDS-gtk3 =	${BASE_PKGPATH},-main \
			x11/gtk+3

RUN_DEPENDS-gtk4 =	# empty
LIB_DEPENDS-gtk4 =	${BASE_PKGPATH},-main \
			x11/gtk+4

USE_GMAKE =		Yes

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.16

CONFIGURE_STYLE =	autoreconf
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

CONFIGURE_ARGS =	--disable-python2 \
			--disable-systemd-services \
			--enable-gtk4 \
			--enable-introspection \
		 	--enable-vala \
			--with-ucd-dir=${LOCALBASE}/share/unicode/ucd

# requires unicode-emoji
CONFIGURE_ARGS +=	--disable-emoji-dict
CONFIGURE_ARGS +=	--with-unicode-emoji-dir=${LOCALBASE}/share/unicode/emoji \
			--with-emoji-annotation-dir=${LOCALBASE}/share/unicode/cldr/common/annotations
			
DEBUG_PACKAGES =	${BUILD_PACKAGES}

FAKE_FLAGS =		bash_completiondir=${PREFIX}/share/examples/ibus/bash_completion.d \
			sysconfdir=${PREFIX}/share/examples/ibus

BUILD_DEPENDS +=	textproc/gtk-doc
do-gen:
	cd ${WRKSRC} && gtkdocize

post-install:
	rm ${PREFIX}/lib/gtk-{2,3,4}.0/*/immodules/*.{a,la}

.include <bsd.port.mk>
