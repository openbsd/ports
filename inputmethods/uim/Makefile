# $OpenBSD: Makefile,v 1.4 2007/02/03 17:05:24 espie Exp $
COMMENT-main=	'multilingual input method library'
COMMENT-gtk=	'uim for gtk'
COMMENT-qt=	'uim for qt'

SHARED_ONLY=	Yes
CATEGORIES=	inputmethods japanese chinese

V=		1.2.1
DISTNAME=	uim-$V
MASTER_SITES=	http://uim.freedesktop.org/releases/
HOMEPAGE=	http://uim.freedesktop.org/wiki/
PKGNAME-main=	uim-$Vp2
PKGNAME-gtk=	uim-gtk-$V
PKGNAME-qt=	uim-qt-$V

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_FTP=	Yes

SHARED_LIBS=		uim 0.0 \
			uim-custom 0.0

MULTI_PACKAGES=	-main -gtk -qt

CONFIGURE_STYLE=	autoconf

MODULES=converters/libiconv devel/gettext x11/qt3

USE_GMAKE=Yes
USE_LIBTOOL=Yes
USE_X11=Yes
AUTOCONF_VERSION=	2.59
SUBST_VARS=	MODQT_PLUGINS


WANTLIB=	Xrender X11 fontconfig freetype Xext c stdc++ m

LIB_DEPENDS-main=anthy,anthydic::inputmethods/anthy \
		${MODLIBICONV_LIB_DEPENDS} \
		${MODGETTEXT_LIB_DEPENDS}

WANTLIB-main=	${WANTLIB} curses util Xft

uim_LIB_DEPENDS=uim,uim-custom::inputmethods/uim
LIB_DEPENDS-qt=	${LIB_DEPENDS-main} ${MODQT_LIB_DEPENDS} ${uim_LIB_DEPENDS}
WANTLIB-qt=	${WANTLIB} pthread

LIB_DEPENDS-gtk=${LIB_DEPENDS-main} ${uim_LIB_DEPENDS} \
		gtk-x11-2.0,gdk-x11-2.0,gdk_pixbuf-2.0::x11/gtk+2 \

WANTLIB-gtk=	${WANTLIB} glib-2.0 gmodule-2.0 pangoft2-1.0 \
		gobject-2.0 pango-1.0 atk-1.0 \
		pangocairo-1.0 cairo util glitz png z


MAKE_FLAGS=	moduledir='${LOCALBASE}/lib/gtk-2.0/2.4.0/immodules' \
		UIM_QT_LDFLAGS='-pthread -L${X11BASE}/lib -L${MODQT_LIBDIR} -lqt-mt -lXext -lX11'
		
FAKE_FLAGS=	${MAKE_FLAGS} DESTDIR=${WRKINST}
CONFIGURE_ENV=	CPPFLAGS='-I${LOCALBASE}/include -I${X11BASE}/include'
CONFIGURE_ENV+=	LDFLAGS='-L${MODQT_LIBDIR} -L${LOCALBASE}/lib -L${X11BASE}/lib'
CONFIGURE_ENV+=	QTDIR=${MODQT_QTDIR}

CONFIGURE_ARGS=	--without-canna --with-anthy --without-prime  \
		--without-qt --without-qt-immodule --with-gtk2 \
		--without-gnome2 \
		--with-qt --with-qt-immodule \
		--enable-default-toolkit=gtk --without-m17nlib \
		--enable-pref --enable-dict 
		
.include <bsd.port.mk>
