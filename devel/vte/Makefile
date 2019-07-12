# $OpenBSD: Makefile,v 1.124 2019/07/12 20:46:03 sthen Exp $

PORTROACH +=		limit:^0\.2

COMMENT-main=		terminal emulation library
COMMENT-python= 	python bindings for vte

GNOME_PROJECT=		vte
GNOME_VERSION=		0.28.2

SHARED_LIBS+=	vte	14.1    # 2609.0

FULLPKGNAME-main=	vte-${GNOME_VERSION}
FULLPKGNAME-python= 	py-${DISTNAME}

REVISION-main =		19
REVISION-python = 	14

CATEGORIES=		devel

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 cairo expat ffi fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 graphite2 gthread-2.0 gtk-x11-2.0 harfbuzz iconv
WANTLIB += intl m ncurses pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB += pixman-1 png pthread xcb xcb-render xcb-shm z

MODULES=		lang/python \
			x11/gnome

MODPY_RUNDEP=		No
MULTI_PACKAGES= 	-main -python

BUILD_DEPENDS=		x11/py-gtk2

WANTLIB-python= 	${WANTLIB} vte
LIB_DEPENDS-python=	${LIB_DEPENDS-main} \
			${BASE_PKGPATH}
RUN_DEPENDS-python=	${MODPY_RUN_DEPENDS} \
			x11/py-gtk2

LIB_DEPENDS-main+=	x11/gtk+2
WANTLIB-main=		${WANTLIB} c

MODGNOME_TOOLS +=	gobject-introspection

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--with-gtk=2.0 \
			--enable-python \
			--disable-gnome-pty-helper

# error: -Bsymbolic-functions requested but not supported by ld
CONFIGURE_ARGS +=	--disable-Bsymbolic

post-install:
	rm ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/gtk-2.0/*.{a,la}

.include <bsd.port.mk>
