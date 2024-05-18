PKG_ARCH=		*

COMMENT=		base icon theme for GNOME

GNOME_PROJECT=		adwaita-icon-theme
GNOME_VERSION=		46.0
REVISION=		0

CATEGORIES=		x11

# GPLv2
PERMIT_PACKAGE=		Yes

MODULES=		devel/meson \
			x11/gnome

MODGNOME_TOOLS=		gtk-update-icon-cache

RUN_DEPENDS=		x11/gnome/adwaita-icon-theme-legacy \
			x11/gnome/librsvg

# XXX cyclic dep: gtk+4->adwaita-icon-theme->gtk+4;
# meson will not run gtk-update-icon-cache when DESTDIR is set anyway
pre-configure:
	ln -sf /usr/bin/true ${WRKDIR}/bin/gtk4-update-icon-cache

.include <bsd.port.mk>
