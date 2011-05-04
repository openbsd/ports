# $OpenBSD: Makefile,v 1.33 2011/05/04 07:32:11 landry Exp $

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
PKGNAME-main=	uim-$V
PKGNAME-gtk=	uim-gtk-$V
PKGNAME-qt=	uim-qt-$V
PKGNAME-kde=	uim-kde-$V
PKGNAME-gnome=	uim-gnome-$V

REVISION-main=	4
REVISION-gtk=	7
REVISION-qt=	3
REVISION-kde=	3
REVISION-gnome=	8

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
USE_GROFF =	Yes
AUTOCONF_VERSION=	2.62
SUBST_VARS=	MODQT_PLUGINS

Wcommon =	X11 Xau Xdmcp Xext c m pthread-stubs xcb \
		Xrender fontconfig freetype expat z \
		${MODGETTEXT_WANTLIB} ${MODLIBICONV_WANTLIB}


RUN_DEPENDS-main=${RUN_DEPENDS} \
		devel/desktop-file-utils
LIB_DEPENDS-main =	inputmethods/anthy \
			${MODLIBICONV_LIB_DEPENDS} \
			${MODGETTEXT_LIB_DEPENDS}
WANTLIB-main=	${Wcommon} curses \
		util Xft stdc++ anthy anthydic \

uim_LIB_DEPENDS=inputmethods/uim

#common to -qt, -kde, -gtk and -gnome
Wx =	GL Xinerama Xrandr Xcursor Xdamage Xfixes Xi Xxf86vm drm

LIB_DEPENDS-qt=		${MODQT_LIB_DEPENDS} \
			${uim_LIB_DEPENDS} \
			${MODLIBICONV_LIB_DEPENDS} \
			${MODGETTEXT_LIB_DEPENDS}

#common to -qt and -kde
Wqt =		${Wcommon} ${Wx} ${MODQT_WANTLIB} \
		ICE SM Xft Xmu Xt jpeg lcms mng png \
		 stdc++ uim gcroots uim-scm

WANTLIB-qt =	${Wqt} uim-custom pthread

LIB_DEPENDS-kde	=	inputmethods/uim \
			${MODLIBICONV_LIB_DEPENDS} \
			${MODGETTEXT_LIB_DEPENDS} \
			x11/kde/libs3
WANTLIB-kde =	${Wqt} idn util art_lgpl_2 kdecore>=7 DCOP kdefx kdeui \


LIB_DEPENDS-gtk =	${LIB_DEPENDS-main} ${uim_LIB_DEPENDS} \
			x11/gtk+2

#common to -gtk and -gnome
Wgtk =		${Wcommon} ${Wx} gio-2.0 glib-2.0 gmodule-2.0 pangoft2-1.0 \
		gobject-2.0 pango-1.0 atk-1.0 uim gcroots uim-scm \
		pangocairo-1.0 cairo png Xcomposite xcb-render xcb-shm \
		pcre pixman-1 gtk-x11-2.0 \
		gdk-x11-2.0 gdk_pixbuf-2.0 gthread-2.0 pthread

WANTLIB-gtk=	${Wgtk} anthy anthydic uim-custom

LIB_DEPENDS-gnome =	inputmethods/uim \
			x11/gtk+2 \
			x11/gnome/panel

WANTLIB-gnome=	${Wgtk} ICE SM crypto gthread-2.0 pthread ssl \
		ORBit-2 ORBitCosNaming-2 art_lgpl_2 bonobo-2 \
		bonobo-activation gconf-2 gnome-2 gnomecanvas-2 \
		popt xml2 bonoboui-2 gnome-keyring gnomeui-2 gnomevfs-2 \
		dbus-1 dbus-glib-1 gailutil util panel-applet-2 \
		canberra gcrypt gpg-error ltdl ogg vorbis vorbisfile

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
