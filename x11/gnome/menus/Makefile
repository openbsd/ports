# $OpenBSD: Makefile,v 1.63 2013/01/15 13:10:51 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT=		implementation of the FreeDesktop Desktop Menu Spec

GNOME_PROJECT=		gnome-menus
GNOME_VERSION=		3.6.2

SHARED_LIBS +=  gnome-menu-3         0.0      # 0.0

# GPLv2/LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

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
