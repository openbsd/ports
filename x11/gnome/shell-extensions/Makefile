PKG_ARCH=		*

COMMENT=		collection of extensions for GNOME Shell

GNOME_PROJECT=		gnome-shell-extensions
GNOME_VERSION=		47.1
REVISION=		2

# GPLv2+
PERMIT_PACKAGE=		Yes

MODULES=		devel/dconf \
			devel/meson \
			x11/gnome

MODGNOME_TOOLS=		desktop-file-utils

RUN_DEPENDS=		x11/gnome/shell

# XXX see patch-meson_build
# system-monitor@gnome-shell-extensions.gcampax.github.com/extension.js
#RUN_DEPENDS +=		devel/libgtop2

# extensions/apps-menu/extension.js
RUN_DEPENDS +=		x11/gnome/menus

CONFIGURE_ARGS=		-Dextension_set=all \
			-Dclassic_mode=true


.include <bsd.port.mk>
