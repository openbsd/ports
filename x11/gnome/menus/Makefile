# $OpenBSD: Makefile,v 1.67 2013/09/28 08:51:24 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT=		implementation of the FreeDesktop Desktop Menu Spec

GNOME_PROJECT=		gnome-menus
GNOME_VERSION=		3.8.0
REVISION=		0

SHARED_LIBS +=  gnome-menu-3         0.0      # 0.0

# GPLv2/LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ffi gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 pcre pthread
WANTLIB += z

MODULES=		devel/gettext \
			x11/gnome

MODGNOME_DESKTOP_FILE=	Yes
MODGNOME_TOOLS= 	gi

RUN_DEPENDS=		devel/gobject-introspection
LIB_DEPENDS=		devel/glib2

pre-configure:
	${SUBST_CMD} ${WRKSRC}/layout/gnome-applications.menu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gnome-menus
	mv ${WRKINST}${SYSCONFDIR}/xdg ${PREFIX}/share/examples/gnome-menus

.include <bsd.port.mk>
