# $OpenBSD: Makefile,v 1.26 2007/07/05 22:50:11 jasper Exp $

COMMENT=		lightweight window manager

GNOME_PROJECT=		metacity
GNOME_VERSION=		2.18.5
PKGNAME=		${DISTNAME}p0
SHARED_LIBS=		metacity-private 0.0
CATEGORIES=		x11

HOMEPAGE=		http://www.gnome.org/softwaremap/projects/Metacity

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	ICE ORBit-2 SM X11 Xau Xcursor Xdmcp Xext Xfixes Xi \
		Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig \
		freetype glib-2.0 glitz gmodule-2.0 gobject-2.0 gthread-2.0 \
		m pango-1.0 pangocairo-1.0 pangoft2-1.0 png pthread z

MODULES=		devel/gettext \
			x11/gnome

LIB_DEPENDS=		gconf-2::devel/gconf2 \
			startup-notification-1::devel/startup-notification \
			gdk-x11-2.0,gdk_pixbuf-2.0,gtk-x11-2.0::x11/gtk+2

SEPARATE_BUILD=		concurrent
USE_X11=		Yes
CONFIGURE_ARGS+=	--with-gconf-schema-file-dir=${LOCALBASE}/share/schemas/metacity
CONFIGURE_ARGS+=	--disable-schemas-install
CONFIGURE_ENV=  	CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/doc/metacity && \
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/metacity/; \
	${INSTALL_DATA} ${WRKSRC}/doc/theme-format.txt ${PREFIX}/share/doc/metacity/; \
	${INSTALL_DATA} ${WRKSRC}/doc/metacity-theme.dtd ${PREFIX}/share/doc/metacity/

.include <bsd.port.mk>
