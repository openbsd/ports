PKG_ARCH=		*

COMMENT=		legacy icon theme for GNOME

GNOME_PROJECT=		adwaita-icon-theme-legacy
GNOME_VERSION=		46.2

CATEGORIES=		x11

# LGPLv3
PERMIT_PACKAGE=		Yes

MODULES=		devel/meson \
			x11/gnome

MODGNOME_TOOLS=		gtk-update-icon-cache

# XXX cyclic dep: gtk+4->adwaita-icon-theme->gtk+4;
# meson will not run gtk-update-icon-cache when DESTDIR is set anyway
pre-configure:
	ln -sf /usr/bin/true ${WRKDIR}/bin/gtk4-update-icon-cache

post-install:
# XXX conflict: already included in the adwaita-icon-theme package
	rm -r ${PREFIX}/share/licenses/adwaita-icon-theme
	rmdir ${PREFIX}/share/licenses

.include <bsd.port.mk>
