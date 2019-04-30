# $OpenBSD: Makefile,v 1.41 2019/04/30 11:08:11 ajacoutot Exp $

COMMENT=		simple encrypted backup tool for GNOME

GNOME_VERSION=		40.1
GNOME_PROJECT=		deja-dup
EXTRACT_SUFX=		.tar.bz2

CATEGORIES=		sysutils

HOMEPAGE=		https://launchpad.net/deja-dup

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += atk-1.0 c cairo cairo-gobject gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 goa-1.0 gobject-2.0 gpg-error gtk-3
WANTLIB += intl json-glib-1.0 nautilus-extension pango-1.0 pangocairo-1.0
WANTLIB += secret-1 soup-2.4

MASTER_SITES=		https://gitlab.gnome.org/World/deja-dup/-/archive/${GNOME_VERSION}/

MODULES=		devel/meson \
			devel/dconf \
			lang/python \
			x11/gnome

MODGNOME_TOOLS=		desktop-file-utils gtk-update-icon-cache vala yelp

RUN_DEPENDS=		sysutils/duplicity

LIB_DEPENDS=		x11/gnome/nautilus \
			x11/gnome/online-accounts

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/deja-dup
	mv ${WRKINST}/etc/xdg ${PREFIX}/share/examples/deja-dup/

.include <bsd.port.mk>
