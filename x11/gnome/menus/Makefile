# $OpenBSD: Makefile,v 1.34 2010/04/24 17:00:35 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT=		implementation of the FreeDesktop Desktop Menu Spec

GNOME_PROJECT=		gnome-menus
GNOME_VERSION=		2.30.0
PKGNAME=		${DISTNAME}p0

SHARED_LIBS +=	gnome-menu           5.1      # .6.6

# GPLv2/LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		m pcre util z

MODULES=		devel/gettext \
			lang/python \
			x11/gnome

DESKTOP_FILES=		Yes

LIB_DEPENDS=		${MODPY_LIB_DEPENDS} \
			glib-2.0,gio-2.0,gmodule-2.0,gobject-2.0,gthread-2.0::devel/glib2
RUN_DEPENDS=		:py-gtk2->=2.10.3:x11/py-gtk2

CONFIGURE_ARGS+=	--enable-introspection=no
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -lm"

pre-configure:
	${SUBST_CMD} ${WRKSRC}/layout/applications.menu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gnome-menus
	mv ${WRKINST}${SYSCONFDIR}/* ${PREFIX}/share/examples/gnome-menus

.include <bsd.port.mk>
