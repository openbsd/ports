# $OpenBSD: Makefile,v 1.19 2009/08/10 06:32:05 kili Exp $

COMMENT-main=	multilingual input method library
COMMENT-gtk=	uim for GTK
COMMENT-qt=	uim for QT
COMMENT-kde=	uim for KDE
COMMENT-gnome=	uim for GNOME

SHARED_ONLY=	Yes
CATEGORIES=	inputmethods japanese chinese

V=		1.5.3
DISTNAME=	uim-$V
MASTER_SITES=	http://uim.googlecode.com/files/
HOMEPAGE=	http://code.google.com/p/uim/
PKGNAME-main=	uim-$Vp1
PKGNAME-gtk=	uim-gtk-$Vp2
PKGNAME-qt=	uim-qt-$Vp1
PKGNAME-kde=	uim-kde-$Vp1
PKGNAME-gnome=	uim-gnome-$Vp4

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_FTP=	Yes

SHARED_LIBS +=	gcroots              0.0      # .1.0
SHARED_LIBS +=	uim-scm              0.0      # .0.0
SHARED_LIBS +=	uim                  1.0      # .6.0
SHARED_LIBS +=	uim-custom           0.0      # .2.0

MULTI_PACKAGES=	-main -gtk -qt -kde -gnome

CONFIGURE_STYLE=	autoconf

MODULES=	converters/libiconv \
		devel/gettext \
		x11/qt3 \
		textproc/intltool

USE_GMAKE=	Yes
USE_LIBTOOL=	Yes
USE_X11=	Yes
AUTOCONF_VERSION=	2.62
SUBST_VARS=	MODQT_PLUGINS

WANTLIB=	X11 Xau Xdmcp Xext c m pthread-stubs xcb

RUN_DEPENDS-main=${RUN_DEPENDS} \
		:desktop-file-utils-*:devel/desktop-file-utils
LIB_DEPENDS-main=anthy,anthydic::inputmethods/anthy \
		${MODLIBICONV_LIB_DEPENDS} \
		${MODGETTEXT_LIB_DEPENDS}
WANTLIB-main=	${WANTLIB} Xrender fontconfig freetype curses \
		util Xft expat z stdc++

uim_LIB_DEPENDS=uim,uim-custom,gcroots,uim-scm::inputmethods/uim

LIB_DEPENDS-qt=	${MODQT_LIB_DEPENDS} \
		${uim_LIB_DEPENDS} \
		${MODLIBICONV_LIB_DEPENDS} \
		${MODGETTEXT_LIB_DEPENDS}
WANTLIB-qt=	${WANTLIB} pthread stdc++

LIB_DEPENDS-kde=uim,gcroots,uim-scm::inputmethods/uim \
		${MODLIBICONV_LIB_DEPENDS} \
		${MODGETTEXT_LIB_DEPENDS} \
		kdecore.>=7,DCOP,kdefx,kdeui::x11/kde/libs3
WANTLIB-kde=	${WANTLIB} Xrender ICE SM idn jpeg png util z \
		art_lgpl_2 qt-mt


LIB_DEPENDS-gtk=${LIB_DEPENDS-main} ${uim_LIB_DEPENDS} \
		gtk-x11-2.0,gdk-x11-2.0,gdk_pixbuf-2.0::x11/gtk+2
WANTLIB-gtk=	${WANTLIB} gio-2.0 glib-2.0 gmodule-2.0 pangoft2-1.0 \
		gobject-2.0 pango-1.0 atk-1.0 \
		pangocairo-1.0 cairo glitz png z expat \
		Xcomposite Xcursor Xdamage Xfixes Xi Xinerama Xrandr \
		pcre pixman-1 Xrender fontconfig freetype

LIB_DEPENDS-gnome=uim,gcroots,uim-scm::inputmethods/uim \
		${MODLIBICONV_LIB_DEPENDS} \
		${MODGETTEXT_LIB_DEPENDS} \
		gtk-x11-2.0,gdk-x11-2.0,gdk_pixbuf-2.0::x11/gtk+2 \
		panel-applet-2::x11/gnome/panel
WANTLIB-gnome=	${WANTLIB-gtk} ICE SM crypto gthread-2.0 pthread ssl \
		ORBit-2 ORBitCosNaming-2 art_lgpl_2 bonobo-2 \
		bonobo-activation gconf-2 glade-2.0 gnome-2 gnomecanvas-2 \
		popt xml2 bonoboui-2 gnome-keyring gnomeui-2 gnomevfs-2 \
		Xcomposite Xcursor Xdamage Xfixes Xi Xinerama Xrandr \
		dbus-1 dbus-glib-1 gailutil pcre pixman-1 util \
		avahi-client avahi-common avahi-glib

MAKE_FLAGS=	moduledir='${LOCALBASE}/lib/gtk-2.0/2.10.0/immodules' \
		UIM_QT_LDFLAGS='-pthread -L${X11BASE}/lib -L${MODQT_LIBDIR} -lqt-mt -lXext -lX11' \
		itlocaledir=${TRUEPREFIX}/share/locale

CONFIGURE_ENV=	CPPFLAGS='-I${LOCALBASE}/include -I${X11BASE}/include'
CONFIGURE_ENV+=	LDFLAGS='-L${MODQT_LIBDIR} -L${LOCALBASE}/lib -L${X11BASE}/lib'
CONFIGURE_ENV+=	QTDIR=${MODQT_QTDIR} QTPLUGINSDIR=${LOCALBASE}/${MODQT_PLUGINS}

CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--without-canna --with-anthy --without-prime  \
		--with-gtk2 --with-qt --with-qt-immodule \
		--enable-default-toolkit=gtk --without-m17nlib \
		--enable-pref --enable-dict

.include <bsd.port.mk>
