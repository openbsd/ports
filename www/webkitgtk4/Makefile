# $OpenBSD: Makefile,v 1.1.1.1 2014/09/30 08:25:27 ajacoutot Exp $

PORTROACH =		limitw:1,even

SHARED_ONLY =		Yes

COMMENT =		GTK+ port of the WebKit rendering engine

V =			2.6.0
DISTNAME =		webkitgtk-${V}
PKGNAME =		webkitgtk4-${V}
EXTRACT_SUFX =		.tar.xz
API =			4.0
SUBST_VARS =		API
DPB_PROPERTIES =	parallel

SHARED_LIBS +=  javascriptcoregtk-${API}     0.0 # 18.0
SHARED_LIBS +=  webkit2gtk-${API}            0.0 # 37.2

CATEGORIES =		www

HOMEPAGE =		http://webkitgtk.org/

MAINTAINER =		Landry Breuil <landry@openbsd.org> \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2 and BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += EGL GL X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender Xt atk-1.0 c cairo cairo-gobject
WANTLIB += enchant fontconfig freetype gdk-3 gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gstapp-1.0
WANTLIB += gstaudio-1.0 gstbase-1.0 gstfft-1.0 gstpbutils-1.0
WANTLIB += gstreamer-1.0 gsttag-1.0 gstvideo-1.0 gtk-3 gtk-x11-2.0
WANTLIB += harfbuzz harfbuzz-icu icui18n icuuc jpeg m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 png pthread secret-1 soup-2.4
WANTLIB += sqlite3 webp xml2 xslt z

MASTER_SITES =		http://webkitgtk.org/releases/

MODULES =		devel/cmake \
			devel/gettext \
			lang/python \
			lang/ruby \
			x11/gnome

MODULES +=		gcc4
MODGCC4_ARCHS =		*
MODGCC4_LANGS =		c++

MODRUBY_RUNDEP =	No
MODPY_RUNDEP =		No
MODPY_ADJ_FILES =	Tools/gtk/generate-inspector-gresource-manifest.py
MODGNOME_TOOLS =	gobject-introspection

USE_GMAKE =		Yes
LIBTOOL_FLAGS =		--tag=disable-static

LDFLAGS =		-L${X11BASE}/lib \
			-Wl,--no-keep-memory

.if ${MACHINE_ARCH} == "powerpc"
LDFLAGS +=		-Wl,-relax -latomic
.endif

# XXX needed to have __sync_add_and_fetch_8 on 32-bits
# what about other 32-bits arches?
.if ${MACHINE_ARCH} == "i386"
CFLAGS +=		-march=i686
.endif

CONFIGURE_ARGS =	-DPORT=GTK \
			-DCMAKE_BUILD_TYPE=Release \
			-DCMAKE_EXE_LINKER_FLAGS="${LDFLAGS}" \
			-DCMAKE_SHARED_LINKER_FLAGS="${LDFLAGS}" \
			-DUSE_SYSTEM_MALLOC=ON

BUILD_DEPENDS =		devel/bison \
			devel/flex \
			devel/gperf \
			devel/libexecinfo \
			geo/geoclue2

RUN_DEPENDS =		geo/geoclue2

LIB_DEPENDS =		devel/harfbuzz,-icu \
			devel/libsoup \
			graphics/libwebp \
			multimedia/gstreamer1/plugins-base \
			textproc/enchant \
			textproc/libxslt \
			x11/gnome/libsecret \
			x11/gtk+2 \
			x11/gtk+3

post-extract:
	ln -sf ${MODPY_BIN} ${WRKDIR}/bin/python
	ln -sf ${RUBY} ${WRKDIR}/bin/ruby

pre-configure:
	${SUBST_CMD} ${WRKSRC}/Source/WebCore/plugins/PluginDatabase.cpp

.include <bsd.port.mk>
