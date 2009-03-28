# $OpenBSD: Makefile,v 1.39 2009/03/28 15:36:54 naddy Exp $

COMMENT-main=		terminal emulation library
COMMENT-python= 	python bindings for vte

GNOME_PROJECT=		vte
GNOME_VERSION=		0.17.4
PKGNAME-main=		${DISTNAME}p0
PKGNAME-python= 	py-${DISTNAME}p0
CATEGORIES=		devel
SHARED_LIBS+=	vte	12.0    # .12.3

HOMEPAGE=		http://www.gnome.org/

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

WANTLIB-main=		${WANTLIB-python} util c
LIB_DEPENDS-main=	${LIB_DEPENDS} \
			gdk-x11-2.0.>=1000,gdk_pixbuf-2.0.>=1000,gtk-x11-2.0.>=1000::x11/gtk+2

WANTLIB-python= 	ICE SM X11 Xau Xcursor Xdmcp Xext Xfixes \
                        Xft Xi Xinerama Xcomposite Xrandr Xrender \
                        Xdamage atk-1.0 cairo expat fontconfig \
                        freetype m z gio-2.0 glib-2.0 glitz gmodule-2.0 \
                        gobject-2.0 ncurses pango-1.0 pangocairo-1.0 \
                        pangoft2-1.0 pangox-1.0 pangoxft-1.0 pcre \
                        pixman-1 png z

BUILD_DEPENDS=		${RUN_DEPENDS-python}
LIB_DEPENDS-python=	${LIB_DEPENDS-main} \
			vte.>=11::${BASE_PKGPATH}
RUN_DEPENDS-python=	${MODPY_RUN_DEPENDS} \
			::x11/py-gtk2

USE_X11=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--enable-python
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			PYTHON="${MODPY_BIN}"

.include <bsd.port.mk>
