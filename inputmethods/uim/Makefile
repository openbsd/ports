# $OpenBSD: Makefile,v 1.47 2013/10/24 15:18:00 ajacoutot Exp $

COMMENT-main=	multilingual input method library
COMMENT-gtk=	uim for GTK
COMMENT-qt=	uim for QT
COMMENT-kde=	uim for KDE

SHARED_ONLY=	Yes
CATEGORIES=	inputmethods japanese chinese

V=		1.5.3
DISTNAME=	uim-$V
MASTER_SITES=	https://uim.googlecode.com/files/
HOMEPAGE=	https://code.google.com/p/uim/
PKGNAME-main=	uim-$V
PKGNAME-gtk=	uim-gtk-$V
PKGNAME-qt=	uim-qt-$V
PKGNAME-kde=	uim-kde-$V

REVISION-main=	11
REVISION-gtk=	13
REVISION-qt=	7
REVISION-kde=	10

# BSD
PERMIT_PACKAGE_CDROM=	Yes

SHARED_LIBS +=	gcroots              0.0      # .1.0
SHARED_LIBS +=	uim-scm              0.0      # .0.0
SHARED_LIBS +=	uim                  1.0      # .6.0
SHARED_LIBS +=	uim-custom           0.0      # .2.0

MULTI_PACKAGES=	-main -gtk -qt -kde

CONFIGURE_STYLE=	autoconf

MODULES=	devel/gettext \
		x11/qt3 \
		textproc/intltool
DPB_PROPERTIES =	tag:kde3

USE_GMAKE=	Yes
AUTOCONF_VERSION=	2.62
SUBST_VARS=	MODQT_PLUGINS

Wcommon =	X11 Xext c m xcb \
		Xrender fontconfig freetype expat z \
		${MODGETTEXT_WANTLIB}


RUN_DEPENDS-main=${RUN_DEPENDS} \
		devel/desktop-file-utils
LIB_DEPENDS-main =	inputmethods/anthy \
			${MODGETTEXT_LIB_DEPENDS}
WANTLIB-main=	${Wcommon} curses \
		util Xft stdc++ anthy anthydic \

uim_LIB_DEPENDS=inputmethods/uim

#common to -qt, -kde, and -gtk
Wx =	GL Xinerama Xrandr Xcursor Xdamage Xfixes Xi Xxf86vm drm

LIB_DEPENDS-qt=		${MODQT_LIB_DEPENDS} \
			${uim_LIB_DEPENDS} \
			${MODGETTEXT_LIB_DEPENDS}

#common to -qt and -kde
Wqt =		${Wcommon} ${Wx} ${MODQT_WANTLIB} \
		ICE SM Xft Xmu Xt jpeg lcms mng png \
		 stdc++ uim gcroots uim-scm

WANTLIB-qt =	${Wqt} uim-custom pthread

LIB_DEPENDS-kde	=	inputmethods/uim \
			${MODGETTEXT_LIB_DEPENDS} \
			x11/kde/libs3
WANTLIB-kde =	${Wqt} idn util art_lgpl_2 lib/kde3/DCOP \
		lib/kde3/kdecore>=7 lib/kde3/kdefx lib/kde3/kdeui


LIB_DEPENDS-gtk =	${LIB_DEPENDS-main} ${uim_LIB_DEPENDS} \
			x11/gtk+2

WANTLIB-gtk=	${Wcommon} ${Wx} gio-2.0 glib-2.0 gmodule-2.0 pangoft2-1.0 \
		gobject-2.0 pango-1.0 atk-1.0 uim gcroots uim-scm \
		pangocairo-1.0 cairo png Xcomposite xcb-render xcb-shm \
		pcre pixman-1 gtk-x11-2.0 \
		gdk-x11-2.0 gdk_pixbuf-2.0 gthread-2.0 pthread anthy anthydic \
		uim-custom Xau Xdmcp ffi pthread-stubs stdc++

MAKE_FLAGS=	moduledir='${LOCALBASE}/lib/gtk-2.0/2.10.0/immodules' \
		UIM_QT_LDFLAGS='-pthread -L${X11BASE}/lib -L${MODQT_LIBDIR} -lqt-mt -lXext -lX11'

CONFIGURE_ENV=	CPPFLAGS='-I${LOCALBASE}/include -I${X11BASE}/include'
CONFIGURE_ENV+=	LDFLAGS='-L${MODQT_LIBDIR} -L${LOCALBASE}/lib -L${X11BASE}/lib'
CONFIGURE_ENV+=	QTDIR=${MODQT_QTDIR} QTPLUGINSDIR=${LOCALBASE}/${MODQT_PLUGINS}

CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--without-canna --with-anthy --without-prime  \
		--with-gtk2 --with-qt --with-qt-immodule \
		--enable-default-toolkit=gtk --without-m17nlib \
		--enable-pref --enable-dict

.include <bsd.port.mk>
