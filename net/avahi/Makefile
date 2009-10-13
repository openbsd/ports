# $OpenBSD: Makefile,v 1.12 2009/10/13 21:15:57 jasper Exp $

COMMENT-main=	framework for Multicast DNS Service Discovery
COMMENT-gtk=	GUI client utilities for avahi
COMMENT-mono=	mono (.NET) bindings for avahi
COMMENT-qt3=	qt3 bindings for avahi
COMMENT-qt4=	qt4 bindings for avahi

V=		0.6.25
DISTNAME=	avahi-${V}
CATEGORIES=	net devel

PKGNAME-main=	avahi-${V}p5
PKGNAME-gtk=	avahi-gtk-${V}p3
PKGNAME-mono=	mono-avahi-${V}p0
PKGNAME-qt3=	avahi-qt3-${V}p2
PKGNAME-qt4=	avahi-qt4-${V}p1

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

SHARED_LIBS +=  avahi-common         0.0      # .8.0
SHARED_LIBS +=  avahi-core           0.0      # .5.5
SHARED_LIBS +=  avahi-qt3            0.0      # .1.2
SHARED_LIBS +=  avahi-qt4            0.0      # .1.2
SHARED_LIBS +=  avahi-client         0.0      # .5.4
SHARED_LIBS +=  avahi-glib           0.0      # .1.1
SHARED_LIBS +=  avahi-gobject        0.0      # .0.1
SHARED_LIBS +=  howl                 0.0      # .0.0
SHARED_LIBS +=  avahi-ui             0.0      # .1.0
SHARED_LIBS +=  dns_sd               0.0      # .1.0

HOMEPAGE=	http://www.avahi.org/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}/download/

PSEUDO_FLAVORS=	no_gtk no_mono no_qt3 no_qt4
FLAVOR?=

MULTI_PACKAGES=	-main

MODULES=	devel/gettext \
		textproc/intltool

WANTLIB=	c expat glib-2.0 gobject-2.0 pcre pthread

BUILD_DEPENDS=	::converters/xmltoman

LIB_DEPENDS-main= ${MODGETTEXT_LIB_DEPENDS} \
		glib-2.0.>=1800,gobject-2.0::devel/glib2 \
		gdbm::databases/gdbm \
		daemon::devel/libdaemon \
		dbus-1::x11/dbus

# only enable the mono subpackage on supported mono arches
# see ONLY_FOR_ARCHS in lang/mono
.if ${MACHINE_ARCH} == "amd64" ||${MACHINE_ARCH} == "i386" \
 || ${MACHINE} == "powerpc"
. if !${FLAVOR:L:Mno_mono}
MULTI_PACKAGES+= -mono
MODULES+=	lang/mono
BUILD_DEPENDS+=	::x11/mono-gtk2
RUN_DEPENDS-mono= ::x11/mono-gtk2
LIB_DEPENDS-mono= # empty
WANTLIB-mono=	# empty
. else
CONFIGURE_ARGS+= --disable-mono \
		--disable-monodoc
. endif
.else
CONFIGURE_ARGS+= --disable-mono \
		--disable-monodoc
.endif

.if !${FLAVOR:L:Mno_gtk}
MULTI_PACKAGES+= -gtk
MODULES+=	lang/python
BUILD_DEPENDS+=	:python-gdbm-*:lang/python/${MODPY_VERSION},-gdbm \
		::x11/py-gtk2 \
		::x11/dbus-python
LIB_DEPENDS-gtk= ${MODGETTEXT_LIB_DEPENDS} \
		avahi-client,avahi-common,avahi-core,avahi-glib::net/avahi \
		glade-2.0.>=1::devel/libglade2
RUN_DEPENDS-gtk= :python-gdbm-*:lang/python/${MODPY_VERSION},-gdbm \
		::x11/py-gtk2 \
		::x11/dbus-python \
		::devel/py-twisted/web \
		::devel/desktop-file-utils
WANTLIB-gtk=	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes \
		Xi Xinerama Xrandr Xrender atk-1.0 c cairo dbus-1 \
		expat fontconfig freetype gdbm gdk-x11-2.0 \
		gdk_pixbuf-2.0 gio-2.0 glib-2.0 glitz gmodule-2.0 \
		gobject-2.0 gtk-x11-2.0 m pango-1.0 pangocairo-1.0 \
		pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs xcb xml2 z
.else
CONFIGURE_ARGS+= -disable-gtk \
		--disable-python \
		--disable-pygtk \
		--disable-python-dbus
.endif

.if !${FLAVOR:L:Mno_qt3}
MULTI_PACKAGES+= -qt3
MODULES+=	x11/qt3
LIB_DEPENDS-qt3= ${MODGETTEXT_LIB_DEPENDS} \
		${MODQT3_LIB_DEPENDS} \
		avahi-common::net/avahi
WANTLIB-qt3=	GL ICE SM X11 Xau Xcursor Xdmcp Xext Xfixes Xft Xi \
		Xinerama Xmu Xrandr Xrender Xt expat fontconfig \
		freetype jpeg lcms m mng png pthread-stubs xcb z
.else
CONFIGURE_ARGS+= --disable-qt3
.endif

.if !${FLAVOR:L:Mno_qt4}
MULTI_PACKAGES+= -qt4
MODULES+=	x11/qt4
LIB_DEPENDS-qt4= ${MODGETTEXT_LIB_DEPENDS} \
		QtCore.>=7::x11/qt4 \
		avahi-common::net/avahi
WANTLIB-qt4=
.else
CONFIGURE_ARGS+= --disable-qt4
.endif

USE_GMAKE=	Yes
USE_X11=	Yes
USE_LIBTOOL=	Yes

AUTOCONF_VERSION= 2.62

CONFIGURE_STYLE=autoconf
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib" \
		PTHREAD_CFLAGS="-pthread" \
		PTHREAD_LIBS="-pthread" \
		PYTHON="${MODPY_BIN}"
CONFIGURE_ARGS+=${CONFIGURE_SHARED} \
		--localstatedir="/var" \
		--with-dbus-sys="${SYSCONFDIR}/dbus-1/" \
		--with-avahi-user=_avahi \
		--with-avahi-group=_avahi \
		--with-avahi-priv-access-group=wheel \
		--with-autoipd-user=_avahi-autoipd \
		--with-autoipd-group=_avahi-autoipd \
		--with-xml=expat \
		--with-distro=openbsd \
		--enable-compat-howl \
		--enable-compat-libdns_sd \
		--enable-core-docs \
		--enable-tests \
		--disable-doxygen-doc \
		--disable-doxygen-dot \
		--disable-doxygen-xml \
		--disable-doxygen-html

# don't link with libssp from gcc4; __guard and __stack_smash_handler
# are part of libc (see LIBS in CONFIGURE_ENV)
CONFIGURE_ARGS+=--disable-stack-protector

# XXX
CONFIGURE_ARGS+=--disable-autoipd

FAKE_FLAGS=	SYSCONFDIR=${SYSCONFDIR}

PC_FILES=	avahi-ui.pc avahi-client.pc avahi-compat-howl.pc \
		avahi-compat-libdns_sd.pc avahi-core.pc avahi-glib.pc \
		avahi-gobject.pc avahi-qt3.pc avahi-qt4.pc

pre-configure:
	find ${WRKSRC} -name Makefile.in -exec \
		perl -pi -e 's,LIBINTL,INTLLIBS,g;' \
			-e 's,LIBICONV,LTLIBICONV,g' {} \;
	perl -pi -e 's,/etc/avahi,${SYSCONFDIR}/avahi,g' \
		${WRKSRC}/man/*.*
	perl -pi -e 's,dbus_connection_disconnect,dbus_connection_close,g' \
		${WRKSRC}/avahi-client/client.c \
		${WRKSRC}/avahi-daemon/dbus-protocol.c
	perl -pi -e 's,-ldl,,g' ${WRKSRC}/configure \
		${WRKSRC}/avahi-client/Makefile.in \
		${WRKSRC}/avahi-daemon/Makefile.in
	for i in ${PC_FILES}; do \
		perl -pi -e 's,Libs:,Libs: -pthread,;' \
			-e 's,Cflags:,Cflags: -pthread,' ${WRKSRC}/$${i}.in; done

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples
	mv ${WRKINST}${SYSCONFDIR}/dbus-1 ${PREFIX}/share/examples/
	mv ${WRKINST}${SYSCONFDIR}/avahi ${PREFIX}/share/examples/

.include <bsd.port.mk>
