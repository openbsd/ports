# $OpenBSD: Makefile,v 1.76 2021/12/09 08:27:43 ajacoutot Exp $

# when gtk+4 support is added, split into multi packages (gtk+{2,3,4})

COMMENT-main =		intelligent input bus framework
COMMENT-gtk2 =		IBus IM module for GTK2
COMMENT-gtk4 =		IBus IM module for GTK4

GH_PROJECT =		ibus
GH_ACCOUNT =		ibus
GH_TAGNAME =		1.5.25

PKGNAME-main =		ibus-${GH_TAGNAME}
PKGNAME-gtk2 =		ibus-gtk2-${GH_TAGNAME}
PKGNAME-gtk4 =		ibus-gtk4-${GH_TAGNAME}

REVISION-main =		4
REVISION-gtk2 =		2
REVISION-gtk4 =		3

SHARED_LIBS +=  ibus-1.0             4.3      # 5.525

CATEGORIES =		inputmethods chinese japanese korean

HOMEPAGE =		https://github.com/ibus/ibus/wiki

# LGPLv2+
PERMIT_PACKAGE =	Yes

MULTI_PACKAGES =	-main -gtk2 -gtk4

WANTLIB += ${COMPILER_LIBCXX} X11 Xau Xcursor Xdamage Xdmcp Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender cairo expat ffi fontconfig
WANTLIB += freetype fribidi gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 graphite2 harfbuzz iconv intl m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png xcb xcb-render
WANTLIB += xcb-shm z execinfo jpeg

WANTLIB-main += ${WANTLIB}
WANTLIB-main += atk-1.0 atk-bridge-2.0 c cairo-gobject dbus-1 dconf
WANTLIB-main += epoxy gdk-3 gthread-2.0 gtk-3 Xcomposite

WANTLIB-gtk2 += ${WANTLIB}
WANTLIB-gtk2 += atk-1.0 dbus-1 gdk-x11-2.0 gtk-x11-2.0 ibus-1.0
WANTLIB-gtk2 += Xcomposite

WANTLIB-gtk4 += ${WANTLIB}
WANTLIB-gtk4 += cairo-gobject cairo-script-interpreter dbus-1 epoxy
WANTLIB-gtk4 += graphene-1.0 gtk-4 ibus-1.0 lzo2 lzma tiff zstd

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
			x11/gtk+3,-guic

# MODPY_LIBDIR/gi/overrides/
RUN_DEPENDS-main +=	devel/py-gobject3${MODPY_FLAVOR}

LIB_DEPENDS-main =	x11/gtk+3

LIB_DEPENDS-gtk2 =	${BASE_PKGPATH},-main \
			x11/gtk+2

LIB_DEPENDS-gtk4 =	${BASE_PKGPATH},-main \
			x11/gtk+4

USE_GMAKE =		Yes

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.16

CONFIGURE_STYLE =	autoreconf
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

CONFIGURE_ARGS =	--disable-python2 \
			--enable-gtk4 \
			--enable-introspection \
		 	--enable-vala \
			--with-ucd-dir=${LOCALBASE}/share/unicode/ucd

# requires unicode-emoji
CONFIGURE_ARGS +=	--disable-emoji-dict
CONFIGURE_ARGS +=	--with-unicode-emoji-dir=${LOCALBASE}/share/unicode/emoji \
			--with-emoji-annotation-dir=${LOCALBASE}/share/unicode/cldr/common/annotations \
			
DEBUG_PACKAGES =	${BUILD_PACKAGES}

FAKE_FLAGS =		bash_completiondir=${PREFIX}/share/examples/ibus/bash_completion.d \
			sysconfdir=${PREFIX}/share/examples/ibus

BUILD_DEPENDS +=	textproc/gtk-doc
do-gen:
	cd ${WRKSRC} && gtkdocize

post-install:
	gunzip ${PREFIX}/man/man{1,5}/*.gz
	rm ${PREFIX}/lib/gtk-{2,3,4}.0/*/immodules/*.{a,la}

.include <bsd.port.mk>
