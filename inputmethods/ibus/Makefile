# $OpenBSD: Makefile,v 1.62 2019/07/12 20:47:13 sthen Exp $

COMMENT =	intelligent input bus framework

GH_PROJECT =	ibus
GH_ACCOUNT =	ibus
GH_TAGNAME =	1.5.5
REVISION =	15

SHARED_LIBS =	ibus-1.0	4.0 # 5.504

CATEGORIES =	inputmethods chinese japanese korean

HOMEPAGE =	https://github.com/ibus/ibus/wiki

# LGPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi c cairo
WANTLIB += cairo-gobject dbus-1 dconf epoxy expat ffi fontconfig
WANTLIB += freetype fribidi gdk-3 gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 graphite2 gthread-2.0 gtk-3
WANTLIB += gtk-x11-2.0 harfbuzz iconv intl m notify pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread xcb
WANTLIB += xcb-render xcb-shm z

# XXX: Remove when upgrading to newer tag
MASTER_SITES =	https://distfiles.nl/

MODULES =	devel/dconf \
		devel/gconf2 \
		lang/python \
		textproc/intltool

BUILD_DEPENDS =	devel/iso-codes \
		devel/py-gobject3 \
		lang/vala
RUN_DEPENDS =	devel/desktop-file-utils \
		devel/iso-codes \
		x11/gtk+3,-guic

# MODPY_LIBDIR/gi/overrides/
RUN_DEPENDS +=	devel/py-gobject3

LIB_DEPENDS =	devel/libnotify \
		x11/gtk+2 \
		x11/gtk+3

MODGCONF2_LIBDEP =	No

USE_GMAKE =	Yes
LIBTOOL_FLAGS =	--tag=disable-static

CONFIGURE_STYLE = gnu
CONFIGURE_ARGS = --mandir=${PREFIX}/man \
		 --enable-introspection \
		 --enable-vala
CONFIGURE_ENV =	CPPFLAGS="${CPPFLAGS} -I${LOCALBASE}/include -I${X11BASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

FAKE_FLAGS =	bash_completiondir=${PREFIX}/share/examples/ibus/bash_completion.d \
		sysconfdir=${PREFIX}/share/examples/ibus

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/ibusshare.c

.include <bsd.port.mk>
