# $OpenBSD: Makefile,v 1.20 2008/11/21 18:14:12 jasper Exp $

SHARED_ONLY=		Yes

COMMENT=		implementation of the FreeDesktop Desktop Menu Spec

GNOME_PROJECT=		gnome-menus
GNOME_VERSION=		2.24.1
SHARED_LIBS +=	gnome-menu           4.0      # .4.8

# GPLv2/LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		m pcre

MODULES=		devel/gettext \
			lang/python \
			x11/gnome

DESKTOP_FILES=		Yes

LIB_DEPENDS=		glib-2.0,gio-2.0,gmodule-2.0,gobject-2.0::devel/glib2
RUN_DEPENDS=		:py-gtk2->=2.10.3:x11/py-gtk2

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -lm" \
			PYTHON="${MODPY_BIN}"

pre-configure:
	perl -pi -e 's,!!MODPY_BIN!!,${MODPY_BIN},' \
		${WRKSRC}/simple-editor/gmenu-simple-editor.in
	perl -pi -e 's,!!LOCALBASE!!,${LOCALBASE},g' \
		${WRKSRC}/layout/applications.menu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gnome-menus
	mv ${WRKINST}${SYSCONFDIR}/* ${PREFIX}/share/examples/gnome-menus

.include <bsd.port.mk>
