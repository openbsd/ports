COMMENT=		simple encrypted backup tool for GNOME

GNOME_VERSION=		43.2
GNOME_PROJECT=		deja-dup

# override gnome MODULE
MASTER_SITES=		https://gitlab.gnome.org/World/deja-dup/-/archive/${GNOME_VERSION}/
EXTRACT_SUFX=		.tar.gz

CATEGORIES=		sysutils

HOMEPAGE=		https://launchpad.net/deja-dup

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv3
PERMIT_PACKAGE=	Yes

WANTLIB += adwaita-1 c gio-2.0 glib-2.0 gobject-2.0 gpg-error
WANTLIB += gtk-4 intl json-glib-1.0 pango-1.0 secret-1 soup-3.0

MODULES=		devel/meson \
			devel/dconf \
			lang/python \
			x11/gnome

MODGNOME_TOOLS=		desktop-file-utils gtk-update-icon-cache vala yelp

RUN_DEPENDS=		sysutils/duplicity

LIB_DEPENDS=		devel/json-glib \
			devel/libsoup3 \
			x11/gnome/libsecret \
			x11/gnome/libadwaita

DEBUG_PACKAGES=		${BUILD_PACKAGES}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/deja-dup
	mv ${WRKINST}/etc/xdg ${PREFIX}/share/examples/deja-dup/

.include <bsd.port.mk>
