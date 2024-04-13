COMMENT=		simple and modern GTK eBook viewer

DIST_TUPLE +=		github johnfactotum foliate 3.1.1 .
DIST_TUPLE +=		github johnfactotum foliate-js 04b8789267aa0d4bc9313a3205dd5cc2e836733e src/foliate-js

CATEGORIES=		textproc graphics print

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
