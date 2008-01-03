# $OpenBSD: Makefile,v 1.33 2008/01/03 11:21:59 landry Exp $

COMMENT-main=		terminal emulation library
COMMENT-python= 	python bindings for vte

GNOME_PROJECT=		vte
GNOME_VERSION=		0.16.11
FULLPKGNAME-main=	${DISTNAME}p1
FULLPKGNAME-python=	py-${DISTNAME}p0
CATEGORIES=		devel
SHARED_LIBS +=  vte                  11.11    # .11.15

HOMEPAGE=		http://www.gnome.org/

# LGPL
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

WANTLIB-python= 	ICE SM X11 Xau Xcursor Xdmcp Xext Xfixes Xft Xi Xinerama Xcomposite \
			Xrandr Xrender Xdamage atk-1.0 cairo expat fontconfig freetype m z \
			glib-2.0 glitz gmodule-2.0 gobject-2.0 ncurses pango-1.0 \
			pangocairo-1.0 pangoft2-1.0 pangox-1.0 pangoxft-1.0 pcre png z
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
