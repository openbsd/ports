# $OpenBSD: Makefile,v 1.5 2007/04/08 14:58:04 espie Exp $
COMMENT-main=	'multilingual input method library'
COMMENT-gtk=	'uim for gtk'
COMMENT-qt=	'uim for qt'
COMMENT-kde=	'uim for kde'
COMMENT-gnome=	'uim for gnome'

SHARED_ONLY=	Yes
CATEGORIES=	inputmethods japanese chinese

V=		1.4.1
DISTNAME=	uim-$V
MASTER_SITES=	http://uim.freedesktop.org/releases/uim/stable/
HOMEPAGE=	http://uim.freedesktop.org/wiki/
PKGNAME-main=	uim-$V
PKGNAME-gtk=	uim-gtk-$V
PKGNAME-qt=	uim-qt-$V
PKGNAME-kde=	uim-kde-$V
PKGNAME-gnome=	uim-gnome-$V

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_FTP=	Yes

SHARED_LIBS +=	gcroots              0.0      # .0.0
SHARED_LIBS +=	uim                  1.0      # .5.0
SHARED_LIBS +=	uim-custom           0.0      # .2.0

MULTI_PACKAGES=	-main -gtk -qt -kde -gnome

CONFIGURE_STYLE=	autoconf

MODULES=converters/libiconv devel/gettext x11/qt3

USE_GMAKE=Yes
USE_LIBTOOL=Yes
USE_X11=Yes
AUTOCONF_VERSION=	2.61
AUTOCONF_DIR=	${WRKDIST} ${WRKDIST}/sigscheme
SUBST_VARS=	MODQT_PLUGINS


WANTLIB=	Xrender X11 fontconfig freetype Xext c stdc++ m Xau Xdmcp

LIB_DEPENDS-main=anthy,anthydic::inputmethods/anthy \
		${MODLIBICONV_LIB_DEPENDS} \
		${MODGETTEXT_LIB_DEPENDS}
WANTLIB-main=	${WANTLIB} curses util Xft expat z

uim_LIB_DEPENDS=uim,uim-custom,gcroots::inputmethods/uim


LIB_DEPENDS-qt=	${LIB_DEPENDS-main} ${MODQT_LIB_DEPENDS} ${uim_LIB_DEPENDS}
WANTLIB-qt=	${WANTLIB} pthread


LIB_DEPENDS-kde=${LIB_DEPENDS-qt} \
		kdecore.>=7,DCOP,kdefx,kdeui::x11/kde/libs3
WANTLIB-kde=	${WANTLIB-qt} ICE SM idn jpeg png util z art_lgpl_2


LIB_DEPENDS-gtk=${LIB_DEPENDS-main} ${uim_LIB_DEPENDS} \
		gtk-x11-2.0,gdk-x11-2.0,gdk_pixbuf-2.0::x11/gtk+2
WANTLIB-gtk=	${WANTLIB} glib-2.0 gmodule-2.0 pangoft2-1.0 \
		gobject-2.0 pango-1.0 atk-1.0 \
		pangocairo-1.0 cairo glitz png z expat



LIB_DEPENDS-gnome=${LIB_DEPENDS-gtk} \
		panel-applet-2::x11/gnome/panel
WANTLIB-gnome=	${WANTLIB-gtk} ICE SM crypto gthread-2.0 jpeg pthread ssl \
		ORBit-2 ORBitCosNaming-2 art_lgpl_2 audiofile bonobo-2 \
		bonobo-activation esd gconf-2 glade-2.0 gnome-2 gnomecanvas-2 \
		popt xml2 bonoboui-2 gnome-keyring gnomeui-2 gnomevfs-2



MAKE_FLAGS=	moduledir='${LOCALBASE}/lib/gtk-2.0/2.4.0/immodules' \
		UIM_QT_LDFLAGS='-pthread -L${X11BASE}/lib -L${MODQT_LIBDIR} -lqt-mt -lXext -lX11' \
		itlocaledir=${TRUEPREFIX}/share/locale

		
FAKE_FLAGS=	${MAKE_FLAGS} DESTDIR=${WRKINST}
CONFIGURE_ENV=	CPPFLAGS='-I${LOCALBASE}/include -I${X11BASE}/include'
CONFIGURE_ENV+=	LDFLAGS='-L${MODQT_LIBDIR} -L${LOCALBASE}/lib -L${X11BASE}/lib'
CONFIGURE_ENV+=	QTDIR=${MODQT_QTDIR}

CONFIGURE_ARGS=	--without-canna --with-anthy --without-prime  \
		--with-gtk2 --without-gnome2 \
		--with-qt --with-qt-immodule \
		--enable-default-toolkit=gtk --without-m17nlib \
		--enable-pref --enable-dict 
		
.include <bsd.port.mk>
