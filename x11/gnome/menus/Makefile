# $OpenBSD: Makefile,v 1.64 2013/03/11 11:46:11 espie Exp $

SHARED_ONLY=		Yes

COMMENT=		implementation of the FreeDesktop Desktop Menu Spec

GNOME_PROJECT=		gnome-menus
GNOME_VERSION=		3.6.2

SHARED_LIBS +=  gnome-menu-3         0.0      # 0.0

# GPLv2/LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ffi gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += pcre pthread z

MODULES=		devel/gettext \
			lang/python \
			x11/gnome

MODGNOME_DESKTOP_FILE=	Yes

RUN_DEPENDS=		devel/gobject-introspection
LIB_DEPENDS=		devel/glib2

MODGNOME_TOOLS= 	goi

pre-configure:
	${SUBST_CMD} ${WRKSRC}/layout/applications.menu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gnome-menus
	mv ${WRKINST}${SYSCONFDIR}/xdg ${PREFIX}/share/examples/gnome-menus

.include <bsd.port.mk>
