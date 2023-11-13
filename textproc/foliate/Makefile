COMMENT=		simple and modern GTK eBook viewer

DIST_TUPLE +=		github johnfactotum foliate 3.0.0 .
DIST_TUPLE +=		github johnfactotum foliate-js f75fbba096e8fc1c775ea1c162fe1d3322cd5121 src/foliate-js

CATEGORIES=		textproc graphics

HOMEPAGE=		https://johnfactotum.github.io/foliate/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv3
PERMIT_PACKAGE=		Yes

MODULES=		devel/dconf \
			devel/meson

BUILD_DEPENDS=		devel/appstream-glib \
			devel/gettext,-tools \
			www/webkitgtk4,webkitgtk60 \
			x11/gnome/gjs \
			x11/gnome/libadwaita

RUN_DEPENDS=		devel/desktop-file-utils \
			www/webkitgtk4,webkitgtk60 \
			x11/gnome/gjs \
			x11/gtk+4,-guic \
			x11/gnome/libadwaita

.include <bsd.port.mk>
