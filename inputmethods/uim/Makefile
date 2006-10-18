# $OpenBSD: Makefile,v 1.1.1.1 2006/10/18 23:57:22 espie Exp $
COMMENT=	'multilingual input method library'

CATEGORIES=	inputmethods japanese chinese

DISTNAME=	uim-1.2.1
MASTER_SITES=	http://uim.freedesktop.org/releases/
HOMEPAGE=	http://uim.freedesktop.org/wiki/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_FTP=	Yes

SHARED_LIBS=		uim 0.0 \
			uim-custom 0.0

CONFIGURE_STYLE=	autoconf
MODULES=converters/libiconv devel/gettext

USE_GMAKE=Yes
USE_LIBTOOL=Yes
USE_X11=Yes
AUTOCONF_VERSION=	2.59

LIB_DEPENDS=	gtk-x11-2.0,gdk-x11-2.0,gdk_pixbuf-2.0::x11/gtk+2 \
		anthy,anthydic::inputmethods/anthy

WANTLIB=	Xrender X11 fontconfig freetype Xext Xft c stdc++ m \
		glib-2.0 gmodule-2.0 pangoft2-1.0 \
		gobject-2.0 pango-1.0 atk-1.0 curses \
		pangocairo-1.0 cairo util glitz png z
		
MAKE_FLAGS=	moduledir='${LOCALBASE}/lib/gtk-2.0/2.4.0/immodules'
		
FAKE_FLAGS=	${MAKE_FLAGS} DESTDIR=${WRKINST}
CONFIGURE_ENV=	CPPFLAGS='-I${LOCALBASE}/include -I${X11BASE}/include'
CONFIGURE_ENV+=	LDFLAGS='-L${LOCALBASE}/lib -L${X11BASE}/lib'

CONFIGURE_ARGS=	--without-canna --with-anthy --without-prime  \
		--without-qt --without-qt-immodule --with-gtk2 \
		--without-gnome2 \
		--enable-default-toolkit=gtk --without-m17nlib \
		--enable-pref --enable-dict 
		
.include <bsd.port.mk>
