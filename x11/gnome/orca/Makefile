COMMENT=		assistive screen reader

GNOME_PROJECT=		orca
GNOME_VERSION=		47.3
REVISION=		0

# LGPLv2
PERMIT_PACKAGE=		Yes

MODULES=		devel/meson \
			lang/python \
			x11/gnome

MODGNOME_TOOLS= 	gtk-update-icon-cache yelp

BUILD_DEPENDS=		devel/py-gobject3 \
			x11/gnome/py-atspi \
			x11/gtk+3

RUN_DEPENDS=		devel/py-gobject3 \
			sysutils/py-psutil \
			devel/py-setproctitle \
			x11/gnome/py-atspi

# pygobject GTK3 introspection (not provided by indirect dependencies)
RUN_DEPENDS +=		x11/gtk+3

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/orca/
	mv ${WRKINST}${SYSCONFDIR}/xdg ${PREFIX}/share/examples/orca/

.include <bsd.port.mk>
