# $OpenBSD: Makefile,v 1.64 2010/10/13 16:20:23 ajacoutot Exp $

COMMENT-main=		terminal emulation library
COMMENT-python= 	python bindings for vte

GNOME_PROJECT=		vte
GNOME_VERSION=		0.26.1
PKGNAME-main=		${DISTNAME}
PKGNAME-python= 	py-${DISTNAME}

CATEGORIES=		devel

SHARED_LIBS+=	vte	14.1    # 2609.0

HOMEPAGE=		http://www.gnome.org/

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		devel/gettext \
			lang/python \
			x11/gnome

MODPY_RUNDEP=		No
MULTI_PACKAGES= 	-main -python

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 cairo expat fontconfig
WANTLIB += freetype gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += m ncurses pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB += pixman-1 png pthread-stubs xcb xcb-render xcb-render-util
WANTLIB += z gthread-2.0 gdk_pixbuf-2.0 gdk-x11-2.0

WANTLIB-main=		${WANTLIB} util c pthread
LIB_DEPENDS-main=	${LIB_DEPENDS} \
			::x11/gtk+2

WANTLIB-python= 	${WANTLIB} ffi vte.>=14 gtk-x11-2.0

BUILD_DEPENDS=		${RUN_DEPENDS-python}
LIB_DEPENDS-python=	${LIB_DEPENDS-main} \
			::${BASE_PKGPATH} \
			::devel/libffi
RUN_DEPENDS-python=	${MODPY_RUN_DEPENDS} \
			::x11/py-gtk2

USE_X11=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--enable-python \
			--disable-Bsymbolic \
			--enable-introspection=no
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
