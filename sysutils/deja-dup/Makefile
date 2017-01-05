# $OpenBSD: Makefile,v 1.36 2017/01/05 08:41:58 ajacoutot Exp $

COMMENT=		simple encrypted backup tool for GNOME

GNOME_VERSION=		34.3
GNOME_PROJECT=		deja-dup

CATEGORIES=		sysutils

HOMEPAGE=		https://launchpad.net/deja-dup

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += atk-1.0 c cairo cairo-gobject gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 girepository-1.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gtk-3 intl nautilus-extension notify pango-1.0 pangocairo-1.0
WANTLIB += peas-1.0 pthread secret-1

MASTER_SITES=		https://launchpad.net/deja-dup/${GNOME_VERSION:C/^([0-9]+).*/\1/}/${GNOME_VERSION}/+download/

MODULES=		devel/cmake \
			devel/dconf \
			lang/python \
			x11/gnome

MODGNOME_TOOLS=		desktop-file-utils gtk-update-icon-cache vala yelp

RUN_DEPENDS=		sysutils/duplicity

LIB_DEPENDS=		devel/libpeas \
			devel/libnotify \
			x11/gnome/nautilus

CONFIGURE_ARGS=		-DENABLE_UNITY:BOOL=OFF \
			-DENABLE_UNITY_CCPANEL:BOOL=OFF

FAKE_FLAGS=		sysconfdir=${PREFIX}/share/examples/deja-dup

pre-configure:
	${SUBST_CMD} ${WRKSRC}/libdeja/PythonChecker.vala

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples
	mv ${PREFIX}/etc ${PREFIX}/share/examples/deja-dup

.include <bsd.port.mk>
