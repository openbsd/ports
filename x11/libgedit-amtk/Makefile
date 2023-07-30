COMMENT=		Actions, Menus and Toolbars Kit

GH_ACCOUNT=		gedit-technology
GH_PROJECT=		libgedit-amtk
GH_TAGNAME=		5.8.0

CATEGORIES=		x11 devel

SHARED_LIBS +=	gedit-amtk-5              0.0 # 0.0

HOMEPAGE=		https://gedit-technology.net/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE=		Yes

WANTLIB += gio-2.0 glib-2.0 gobject-2.0 gtk-3 intl

MODULES=		devel/meson \
			x11/gnome

MODGNOME_TOOLS= 	gobject-introspection

BUILD_DEPENDS=		devel/gettext,-tools \
			textproc/gtk-doc

LIB_DEPENDS=		x11/gtk+3

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
