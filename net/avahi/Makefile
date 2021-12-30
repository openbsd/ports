# $OpenBSD: Makefile,v 1.151 2021/12/30 10:51:44 ajacoutot Exp $

COMMENT-main=		framework for Multicast DNS Service Discovery
COMMENT-glib=		GLib and GObject integration libraries for avahi
COMMENT-gtk3=		gtk+3 avahi-ui libraries
COMMENT-gui=		GUI client utilities for avahi
COMMENT-libs=		libraries and common data files for avahi
COMMENT-python=		python bindings for avahi

V=			0.8
GH_ACCOUNT=		lathiat
GH_PROJECT=		avahi
#GH_TAGNAME=		v${V}
GH_TAGNAME=		fd482a74625b8db8547b8cfca3ee3d3c6c721423

PKGNAME-main=		avahi-${V}
PKGNAME-glib=		avahi-glib-${V}
PKGNAME-gtk3=		avahi-gtk3-${V}
PKGNAME-gui=		avahi-gui-${V}
PKGNAME-libs=		avahi-libs-${V}
PKGNAME-python=		py3-avahi-${V}

REVISION-python=	4
REVISION-gui=		5
REVISION-gtk3=		3
REVISION-main=		5
REVISION-libs=		2
REVISION-glib=		1

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

MULTI_PACKAGES= 	-main -glib -gui -gtk3 -libs -python
DEBUG_PACKAGES=		-main -glib -gui -gtk3 -libs -python

MODULES=		textproc/intltool

BUILD_DEPENDS=		converters/xmltoman \
			devel/gobject-introspection \

WANTLIB-main += avahi-client avahi-common c dbus-1 execinfo gdbm iconv
WANTLIB-main += intl pthread avahi-core daemon expat

LIB_DEPENDS-main=	${BUILD_PKGPATH},-libs \
			databases/gdbm \
			devel/libdaemon

# /usr/local/share/dbus-1/system-services/
RUN_DEPENDS-main +=	x11/dbus,-suid

WANTLIB-libs += pthread dbus-1 execinfo iconv intl event_core
WANTLIB-libs += event_extra

LIB_DEPENDS-libs=	devel/gettext,-runtime \
			devel/libevent2 \
			x11/dbus

RUN_DEPENDS-libs=	# empty

CONFIGURE_ARGS=		--disable-mono \
			--disable-monodoc

WANTLIB-glib += avahi-client avahi-common dbus-1 execinfo ffi glib-2.0
WANTLIB-glib += gobject-2.0 iconv intl pcre pthread

LIB_DEPENDS-glib=	devel/glib2 \
			${BUILD_PKGPATH},-libs

RUN_DEPENDS-glib=	# empty

.include <bsd.port.arch.mk>

.if !${BUILD_PACKAGES:M-gui}
# all these vanish together
BUILD_PACKAGES :=	${BUILD_PACKAGES:N-gtk3:N-python}
.endif

.if ${BUILD_PACKAGES:M-gui}
### common
MODULES+=		lang/python
BUILD_DEPENDS+=		devel/py-gobject3${MODPY_FLAVOR} \
			lang/python/${MODPY_VERSION},-gdbm \
			x11/dbus-python${MODPY_FLAVOR}

### -gtk3
LIB_DEPENDS-gtk3=	databases/gdbm \
			x11/gtk+3 \
			${BUILD_PKGPATH},-glib
RUN_DEPENDS-gtk3=	# empty
WANTLIB-gtk3 += X11 Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB-gtk3 += Xi Xinerama Xrandr Xrender atk-1.0 avahi-client
WANTLIB-gtk3 += avahi-common avahi-glib cairo cairo-gobject
WANTLIB-gtk3 += dbus-1 expat fontconfig freetype gdbm gdk-3 gdk_pixbuf-2.0
WANTLIB-gtk3 += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 epoxy
WANTLIB-gtk3 += gtk-3 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB-gtk3 += pcre pixman-1 png pthread xcb xcb-render graphite2
WANTLIB-gtk3 += xcb-shm z ffi iconv intl fribidi atk-bridge-2.0 harfbuzz
WANTLIB-gtk3 += ${COMPILER_LIBCXX} execinfo jpeg Xau Xdmcp

### -gui
LIB_DEPENDS-gui=	${BUILD_PKGPATH},-gtk3
RUN_DEPENDS-gui=	${MODPY_RUN_DEPENDS} \
			${BUILD_PKGPATH},-python \
			x11/dbus-python${MODPY_FLAVOR} \
			devel/py-twisted${MODPY_FLAVOR} \
			devel/desktop-file-utils

WANTLIB-gui += X11 Xcomposite Xcursor Xdamage Xext Xfixes harfbuzz
WANTLIB-gui += Xi Xinerama Xrandr Xrender atk-1.0 avahi-client
WANTLIB-gui += avahi-common avahi-core avahi-glib avahi-ui-gtk3 c
WANTLIB-gui += cairo cairo-gobject dbus-1 expat fontconfig freetype
WANTLIB-gui += gdbm gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB-gui += gobject-2.0 gtk-3 m pango-1.0 fribidi atk-bridge-2.0
WANTLIB-gui += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread
WANTLIB-gui += xcb xcb-render xcb-shm z ffi graphite2 epoxy iconv intl
WANTLIB-gui += ${COMPILER_LIBCXX} execinfo jpeg Xau Xdmcp

### -python
LIB_DEPENDS-python=	#empty
RUN_DEPENDS-python=	${BUILD_PKGPATH},-libs \
			${MODPY_RUN_DEPENDS} \
			lang/python/${MODPY_VERSION},-gdbm
WANTLIB-python += 	#empty

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

CONFIGURE_ARGS+=	--with-dbus-sys="${SYSCONFDIR}/dbus-1/system.d" \
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
