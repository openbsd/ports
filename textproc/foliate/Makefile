COMMENT=		simple and modern GTK eBook viewer

DIST_TUPLE +=		github johnfactotum foliate 3.1.0 .
DIST_TUPLE +=		github johnfactotum foliate-js 35f749dd7cf8a2e9ee6d34b06d83c92ccd999ba9 src/foliate-js

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
