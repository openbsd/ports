COMMENT=		simple and modern GTK eBook viewer

DIST_TUPLE +=		github johnfactotum foliate 3.0.1 .
DIST_TUPLE +=		github johnfactotum foliate-js 2ea63929c73b6a3b98fc772abf6b9249b3bfadab src/foliate-js

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
