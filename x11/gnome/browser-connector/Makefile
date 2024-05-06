COMMENT=		GNOME Shell browser connector

GNOME_PROJECT=		gnome-browser-connector
GNOME_VERSION=		42.1
REVISION=		5

# GPLv3
PERMIT_PACKAGE=		Yes

MODULES=		devel/meson \
			lang/python \
			x11/gnome

MODGNOME_TOOLS=		desktop-file-utils gtk-update-icon-cache
MODPY_ADJ_FILES=	contrib/merge_json.py

BUILD_DEPENDS=		devel/py-gobject3${MODPY_FLAVOR}

RUN_DEPENDS=		devel/py-gobject3${MODPY_FLAVOR} \
			x11/gnome/shell

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gnome-browser-connector
	mv ${WRKINST}/etc/chromium \
		${PREFIX}/share/examples/gnome-browser-connector/
	rm -r ${WRKINST}/etc/opt

.include <bsd.port.mk>
