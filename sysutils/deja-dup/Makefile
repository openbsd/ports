# $OpenBSD: Makefile,v 1.49 2020/07/05 09:29:00 ajacoutot Exp $

COMMENT=		simple encrypted backup tool for GNOME

GNOME_VERSION=		42.0
GNOME_PROJECT=		deja-dup
# override gnome MODULE
EXTRACT_SUFX=		.tar.gz

CATEGORIES=		sysutils

HOMEPAGE=		https://launchpad.net/deja-dup

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv3
PERMIT_PACKAGE=	Yes

WANTLIB += atk-1.0 c gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0
WANTLIB += gpg-error gtk-3 handy-0.0 intl json-glib-1.0 secret-1
WANTLIB += soup-2.4

MASTER_SITES=		https://gitlab.gnome.org/World/deja-dup/-/archive/${GNOME_VERSION}/

MODULES=		devel/meson \
			devel/dconf \
			lang/python \
			x11/gnome

MODGNOME_TOOLS=		desktop-file-utils gtk-update-icon-cache vala yelp
MODPY_VERSION=		${MODPY_DEFAULT_VERSION_3}

RUN_DEPENDS=		sysutils/duplicity \
			x11/gnome/libsecret

LIB_DEPENDS=		x11/libhandy

DEBUG_PACKAGES=		${BUILD_PACKAGES}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/deja-dup
	mv ${WRKINST}/etc/xdg ${PREFIX}/share/examples/deja-dup/

.include <bsd.port.mk>
