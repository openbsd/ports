# $OpenBSD: Makefile,v 1.139 2020/07/05 07:09:11 ajacoutot Exp $

COMMENT-main=		framework for Multicast DNS Service Discovery
COMMENT-gtk3=		gtk+3 avahi-ui libraries
COMMENT-gui=		GUI client utilities for avahi
COMMENT-python=		python bindings for avahi
COMMENT-ui=		common avahi-ui header for gtk+2 and gtk+3

V=			0.8
GH_ACCOUNT=		lathiat
GH_PROJECT=		avahi
GH_TAGNAME=		v${V}

REVISION-python=	0
REVISION-gui=		0

PKGNAME-main=		avahi-${V}
PKGNAME-gtk3=		avahi-gtk3-${V}
PKGNAME-gui=		avahi-gui-${V}
PKGNAME-python=		py3-avahi-${V}
PKGNAME-ui=		avahi-ui-${V}

CATEGORIES=		net devel

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

SHARED_LIBS +=  avahi-common         0.2      # 8.4
SHARED_LIBS +=  avahi-core           0.2      # 8.0
SHARED_LIBS +=  avahi-client         0.2      # 5.9
SHARED_LIBS +=  avahi-glib           0.2      # 1.2
SHARED_LIBS +=  avahi-gobject        0.2      # 0.5
SHARED_LIBS +=  dns_sd               0.2      # 1.0
SHARED_LIBS +=  howl                 0.2      # 0.0
SHARED_LIBS +=  avahi-ui-gtk3        0.2      # 1.4
SHARED_LIBS +=  avahi-libevent       0.0      # 1.0

HOMEPAGE=		http://www.avahi.org/

# LGPLv2.1
PERMIT_PACKAGE=	Yes

PSEUDO_FLAVORS=		no_gui bootstrap
FLAVOR?=		no_gui bootstrap

MULTI_PACKAGES= 	-main -gui -gtk3 -python -ui
DEBUG_PACKAGES=		-main -gui -gtk3 -python

MODULES=		textproc/intltool

BUILD_DEPENDS=		converters/xmltoman \
			devel/gobject-introspection \

WANTLIB-main += c expat glib-2.0 gobject-2.0 pcre pthread gdbm daemon
WANTLIB-main += dbus-1 ffi iconv intl event_core event_extra

RUN_DEPENDS-main=	${RUN_DEPENDS}

# /usr/local/share/dbus-1/system-services/
RUN_DEPENDS-main +=	x11/dbus,-suid

LIB_DEPENDS-main=	devel/glib2 \
			databases/gdbm \
			devel/libdaemon \
			devel/libevent2 \
			x11/dbus

CONFIGURE_ARGS=		--disable-mono \
			--disable-monodoc

.include <bsd.port.arch.mk>

.if !${BUILD_PACKAGES:M-gui}
# all these vanish together
BUILD_PACKAGES :=	${BUILD_PACKAGES:N-gtk3:N-python:N-ui}
.endif

.if ${BUILD_PACKAGES:M-gui}
### common
MODULES+=		lang/python
MODPY_VERSION=		${MODPY_DEFAULT_VERSION_3}
BUILD_DEPENDS+=		devel/py-gobject3${MODPY_FLAVOR} \
			lang/python/${MODPY_VERSION},-gdbm \
			x11/dbus-python${MODPY_FLAVOR}

### -gtk3
LIB_DEPENDS-gtk3=	x11/gtk+3 \
			${BUILD_PKGPATH}
RUN_DEPENDS-gtk3=	${BUILD_PKGPATH},-ui
WANTLIB-gtk3 += X11 Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB-gtk3 += Xi Xinerama Xrandr Xrender atk-1.0 avahi-client
WANTLIB-gtk3 += avahi-common avahi-glib cairo cairo-gobject
WANTLIB-gtk3 += dbus-1 expat fontconfig freetype gdbm gdk-3 gdk_pixbuf-2.0
WANTLIB-gtk3 += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 epoxy
WANTLIB-gtk3 += gtk-3 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB-gtk3 += pcre pixman-1 png pthread xcb xcb-render graphite2
WANTLIB-gtk3 += xcb-shm z ffi iconv intl fribidi atk-bridge-2.0 harfbuzz

### -gui
LIB_DEPENDS-gui=	${BUILD_PKGPATH},-gtk3
RUN_DEPENDS-gui=	${MODPY_RUN_DEPENDS} \
			${BUILD_PKGPATH},-python \
			x11/dbus-python${MODPY_FLAVOR} \
			devel/py-twisted${MODPY_FLAVOR} \
			devel/desktop-file-utils

# pygobject GTK2 introspection (not provided by indirect dependencies)
RUN_DEPENDS-gui +=	x11/gtk+2

WANTLIB-gui += X11 Xcomposite Xcursor Xdamage Xext Xfixes harfbuzz
WANTLIB-gui += Xi Xinerama Xrandr Xrender atk-1.0 avahi-client
WANTLIB-gui += avahi-common avahi-core avahi-glib avahi-ui-gtk3 c
WANTLIB-gui += cairo cairo-gobject dbus-1 expat fontconfig freetype
WANTLIB-gui += gdbm gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB-gui += gobject-2.0 gtk-3 m pango-1.0 fribidi atk-bridge-2.0
WANTLIB-gui += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread
WANTLIB-gui += xcb xcb-render xcb-shm z ffi graphite2 epoxy iconv intl

### -python
LIB_DEPENDS-python=	#empty
RUN_DEPENDS-python=	${BUILD_PKGPATH} \
			${MODPY_RUN_DEPENDS} \
			lang/python/${MODPY_VERSION},-gdbm
WANTLIB-python += 	#empty

### -ui
LIB_DEPENDS-ui= 	#empty
RUN_DEPENDS-ui= 	${BUILD_PKGPATH}
WANTLIB-ui +=		#empty
PKG_ARCH-ui=		*
.else
CONFIGURE_ARGS+=	--disable-gtk \
			--disable-gtk3 \
			--disable-python \
			--disable-pygobject \
			--disable-python-dbus
.endif

USE_GMAKE=		Yes

MODPY_RUNDEP=		No

CFLAGS+=		-D_BSD_SOURCE

CONFIGURE_STYLE=	autoreconf
AUTORECONF=		/bin/sh ./autogen.sh
AUTOCONF_VERSION=	2.69
AUTOMAKE_VERSION=	1.16

# ld: error: undefined symbol: libintl_dgettext
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -lintl -L${X11BASE}/lib"

CONFIGURE_ARGS+=	--with-dbus-sys="${SYSCONFDIR}/dbus-1/" \
			--with-avahi-user=_avahi \
			--with-avahi-group=_avahi \
			--with-avahi-priv-access-group=wheel \
			--with-xml=expat \
			--with-distro=none \
			--enable-compat-howl \
			--enable-compat-libdns_sd \
			--enable-core-docs \
			--enable-tests \
			--enable-introspection \
			--disable-gtk \
			--disable-qt3 \
			--disable-qt4 \
			--disable-qt5 \
			--disable-autoipd \
			--disable-doxygen-doc \
			--disable-doxygen-dot \
			--disable-doxygen-xml \
			--disable-doxygen-html

# don't link with libssp from the gcc4 port
# __guard and __stack_smash_handler are part of libc
CONFIGURE_ARGS +=	--disable-stack-protector

FAKE_FLAGS=		SYSCONFDIR=${SYSCONFDIR}

PORTHOME=		${WRKBUILD}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/avahi
	mv ${WRKINST}${SYSCONFDIR}/avahi ${PREFIX}/share/examples/
	mv ${WRKINST}${SYSCONFDIR}/dbus-1 ${PREFIX}/share/examples/avahi/
	${INSTALL_DATA_DIR} ${PREFIX}/share/dbus-1/system-services
	${INSTALL_DATA} ${WRKBUILD}/avahi-daemon/org.freedesktop.Avahi.service \
		${PREFIX}/share/dbus-1/system-services

.include <bsd.port.mk>
