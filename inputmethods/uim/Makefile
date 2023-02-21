COMMENT-main=		multilingual input method library
COMMENT-gtk=		uim for GTK+2
COMMENT-gtk3=		uim for GTK+3

CATEGORIES=		inputmethods japanese chinese

V=			1.8.9
DISTNAME=		uim-$V
PKGNAME-main=		uim-$V
PKGNAME-gtk=		uim-gtk-$V
PKGNAME-gtk3=		uim-gtk3-$V

MASTER_SITES=		https://github.com/uim/uim/releases/download/$V/
HOMEPAGE=		https://github.com/uim/uim

SHARED_LIBS +=	uim-scm              0.0      # .0.0
SHARED_LIBS +=	uim                  1.1      # .6.0
SHARED_LIBS +=	uim-custom           0.0      # .2.0

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB += X11 Xext Xrender fontconfig freetype iconv intl m

COMPILER =		base-clang ports-gcc base-gcc

MULTI_PACKAGES=		-main -gtk -gtk3

MODULES=		textproc/intltool

USE_GMAKE=		Yes

RUN_DEPENDS-main=	devel/desktop-file-utils

WANTLIB-main += ${WANTLIB} ${COMPILER_LIBCXX}
WANTLIB-main += Xft anthy anthydic c curses edit expat gcroots
WANTLIB-main += sqlite3 util xcb z lzma m17n m17n-core xml2

LIB_DEPENDS-main=	inputmethods/anthy \
			devel/libgcroots \
			misc/m17n/lib

WANTLIB-gtk += ${WANTLIB} ${COMPILER_LIBCXX}
WANTLIB-gtk += Xcomposite Xcursor Xdamage Xfixes Xi Xinerama Xrandr
WANTLIB-gtk += atk-1.0 c cairo expat ffi gcroots gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB-gtk += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 graphite2
WANTLIB-gtk += gtk-x11-2.0 harfbuzz pango-1.0 pangocairo-1.0
WANTLIB-gtk += pangoft2-1.0 pcre2-8 pixman-1 png pthread fribidi
WANTLIB-gtk += uim uim-custom uim-scm xcb xcb-render xcb-shm z
WANTLIB-gtk += Xau Xdmcp jpeg

LIB_DEPENDS-gtk=	inputmethods/uim \
			x11/gtk+2

WANTLIB-gtk3 += ${WANTLIB} ${COMPILER_LIBCXX} execinfo
WANTLIB-gtk3 += Xcomposite Xcursor Xdamage Xfixes Xi Xinerama
WANTLIB-gtk3 += Xrandr atk-1.0 atk-bridge-2.0 c cairo cairo-gobject
WANTLIB-gtk3 += expat ffi gcroots gdk-3 gdk_pixbuf-2.0 gio-2.0
WANTLIB-gtk3 += glib-2.0 gmodule-2.0 gobject-2.0 graphite2
WANTLIB-gtk3 += gtk-3 harfbuzz pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB-gtk3 += pcre2-8 pixman-1 png pthread uim uim-custom fribidi
WANTLIB-gtk3 += uim-scm xcb xcb-render xcb-shm z epoxy atspi dbus-1
WANTLIB-gtk3 += Xau Xdmcp jpeg

LIB_DEPENDS-gtk3=	inputmethods/uim \
			x11/gtk+3

CONFIGURE_STYLE=	gnu

CONFIGURE_ENV=		CPPFLAGS='-I${LOCALBASE}/include -I${X11BASE}/include' \
			LDFLAGS='-L${LOCALBASE}/lib -L${X11BASE}/lib'

CONFIGURE_ARGS=		--with-anthy-utf8 \
			--with-libgcroots

post-install:
	rm ${PREFIX}/lib/uim/plugin/*.{a,la}
	rm ${PREFIX}/lib/gtk-2.0/2.10.0/immodules/*.{a,la}
	rm ${PREFIX}/lib/gtk-3.0/3.0.0/immodules/*.{a,la}

.include <bsd.port.mk>
