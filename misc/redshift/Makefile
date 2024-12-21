COMMENT=		automatic color temperature adjustment

V=			1.12
DISTNAME=		redshift-$V
REVISION=		11

CATEGORIES=		misc graphics

HOMEPAGE=		http://jonls.dk/redshift/

# GPLv3
PERMIT_PACKAGE=	Yes

WANTLIB =  X11 Xau Xdmcp Xext Xxf86vm c drm ffi gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 iconv intl m pcre2-8 pthread xcb
WANTLIB += xcb-randr z

SITES=			https://github.com/jonls/redshift/releases/download/v$V/
EXTRACT_SUFX=		.tar.xz

MODULES=		lang/python \
			textproc/intltool

MODPY_ADJ_FILES=	src/redshift-gtk/redshift-gtk.in

LIB_DEPENDS=		devel/glib2

RUN_DEPENDS=		devel/desktop-file-utils \
			devel/py-gobject3 \
			devel/py-xdg \
			geo/geoclue2 \
			x11/gtk+4,-guic

# pygobject GTK3 introspection (not provided by indirect dependencies)
RUN_DEPENDS +=		x11/gtk+3

SEPARATE_BUILD=		Yes
USE_GMAKE=		Yes

# upstream tar was generated with automake-1.15; py-compile from there
# is not compatible with python 3.12 (uses imp which was removed)
AUTOCONF_VERSION=	2.69
AUTOMAKE_VERSION=	1.16
CONFIGURE_STYLE=	autoreconf
#CONFIGURE_STYLE=	gnu

# if autoconf files are regenerated but intltoolize is not re-run,
# configure errors out with "po/Makefile.in.in was not created by
# intltoolize"
pre-configure:
	cd ${WRKSRC}; intltoolize --force

CONFIGURE_ARGS=		--enable-gui \
			--disable-geoclue

# --enable-gui runs gtk-update-icon-cache(1)
FAKE_FLAGS =		UPDATE_ICON_CACHE=true

.include <bsd.port.mk>
