# $OpenBSD: Makefile,v 1.51 2011/09/26 10:47:35 jasper Exp $

SHARED_ONLY=		Yes

COMMENT=		implementation of the FreeDesktop Desktop Menu Spec

GNOME_PROJECT=		gnome-menus
GNOME_VERSION=		3.2.0

SHARED_LIBS +=  gnome-menu-3         0.0      # 0.0

# GPLv2/LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ffi gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += pcre z

MODULES=		devel/gettext \
			x11/gnome

# XXX: Re-enable (along with goo) when gmenu-simple-editor is fixed.
#MODGNOME_DESKTOP_FILE=	Yes

RUN_DEPENDS=		devel/gobject-introspection
LIB_DEPENDS=		devel/glib2

MODGNOME_TOOLS= 	goi
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

pre-configure:
	${SUBST_CMD} ${WRKSRC}/layout/applications.menu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gnome-menus
	mv ${WRKINST}${SYSCONFDIR}/* ${PREFIX}/share/examples/gnome-menus

.include <bsd.port.mk>
