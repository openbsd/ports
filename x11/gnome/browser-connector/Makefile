COMMENT=		GNOME Shell browser connector

V=			42.1
GNOME_PROJECT=		gnome-browser-connector
GNOME_VERSION=		v${V}
PKGNAME=		${GNOME_PROJECT}-${V}
REVISION=		0

# override gnome MODULE
MASTER_SITES=		https://gitlab.gnome.org/nE0sIghT/${GNOME_PROJECT}/-/archive/${GNOME_VERSION}/
EXTRACT_SUFX=		.tar.gz

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
