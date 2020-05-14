# $OpenBSD: Makefile,v 1.47 2020/05/14 12:23:14 ajacoutot Exp $

COMMENT=		simple encrypted backup tool for GNOME

GNOME_VERSION=		40.6
GNOME_PROJECT=		deja-dup
# override gnome MODULE
EXTRACT_SUFX=		.tar.gz

REVISION=		0

CATEGORIES=		sysutils

HOMEPAGE=		https://launchpad.net/deja-dup

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv3
PERMIT_PACKAGE=	Yes

WANTLIB += atk-1.0 c gdk-3 gio-2.0 glib-2.0 goa-1.0 gobject-2.0
WANTLIB += gpg-error gtk-3 intl json-glib-1.0 nautilus-extension
WANTLIB += pango-1.0 secret-1 soup-2.4

MASTER_SITES=		https://gitlab.gnome.org/World/deja-dup/-/archive/${GNOME_VERSION}/

MODULES=		devel/meson \
			devel/dconf \
			lang/python \
			x11/gnome

MODGNOME_TOOLS=		desktop-file-utils gtk-update-icon-cache vala yelp

RUN_DEPENDS=		sysutils/duplicity

LIB_DEPENDS=		x11/gnome/nautilus \
			x11/gnome/online-accounts

DEBUG_PACKAGES=		${BUILD_PACKAGES}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/deja-dup
	mv ${WRKINST}/etc/xdg ${PREFIX}/share/examples/deja-dup/

.include <bsd.port.mk>
