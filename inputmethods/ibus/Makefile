# $OpenBSD: Makefile,v 1.67 2020/11/07 08:04:25 ajacoutot Exp $

COMMENT =		intelligent input bus framework

GH_PROJECT =		ibus
GH_ACCOUNT =		ibus
GH_TAGNAME =		1.5.23

SHARED_LIBS +=  ibus-1.0             4.2      # 5.523

CATEGORIES =		inputmethods chinese japanese korean

HOMEPAGE =		https://github.com/ibus/ibus/wiki

# LGPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} X11 Xcomposite Xcursor Xdamage Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0
WANTLIB += c cairo cairo-gobject dbus-1 dconf epoxy expat ffi
WANTLIB += fontconfig freetype fribidi gdk-3 gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 graphite2
WANTLIB += gthread-2.0 gtk-3 gtk-x11-2.0 harfbuzz iconv intl m
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png xcb xcb-render xcb-shm z

MODULES =		devel/dconf \
			lang/python \
			textproc/intltool

MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}

BUILD_DEPENDS =		devel/iso-codes \
			devel/py-gobject3${MODPY_FLAVOR} \
			lang/vala \
			textproc/unicode-ucd

RUN_DEPENDS =		devel/desktop-file-utils \
			devel/iso-codes \
			x11/gtk+3,-guic

# MODPY_LIBDIR/gi/overrides/
RUN_DEPENDS +=		devel/py-gobject3${MODPY_FLAVOR}

LIB_DEPENDS =		x11/gtk+2 \
			x11/gtk+3

MODGCONF2_LIBDEP =	No

USE_GMAKE =		Yes

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.16

CONFIGURE_STYLE =	autoreconf
CONFIGURE_ARGS =	--disable-python2 \
			--enable-introspection \
		 	--enable-vala \
			--with-ucd-dir=${LOCALBASE}/share/unicode/ucd

# requires unicode-emoji
CONFIGURE_ARGS +=	--disable-emoji-dict
CONFIGURE_ARGS +=	--with-unicode-emoji-dir=${LOCALBASE}/share/unicode/emoji \
			--with-emoji-annotation-dir=${LOCALBASE}/share/unicode/cldr/common/annotations \
			
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

DEBUG_PACKAGES =	${BUILD_PACKAGES}

FAKE_FLAGS =		bash_completiondir=${PREFIX}/share/examples/ibus/bash_completion.d \
			sysconfdir=${PREFIX}/share/examples/ibus

BUILD_DEPENDS +=	textproc/gtk-doc
do-gen:
	cd ${WRKSRC} && gtkdocize

post-install:
	gunzip ${PREFIX}/man/man{1,5}/*.gz
	rm ${PREFIX}/lib/gtk-2.0/2.10.0/immodules/*.{a,la}
	rm ${PREFIX}/lib/gtk-3.0/3.0.0/immodules/*.{a,la}

.include <bsd.port.mk>
