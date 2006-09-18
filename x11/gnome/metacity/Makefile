# $OpenBSD: Makefile,v 1.20 2006/09/18 12:19:40 espie Exp $

COMMENT=		"Boring window manager for the adult in you."

DISTNAME=		metacity-2.10.3
PKGNAME=		${DISTNAME}p2
SHARED_LIBS=		metacity-private 0.0
CATEGORIES=		x11 x11/gnome

HOMEPAGE=		http://www.gnome.org/softwaremap/projects/Metacity

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	ICE ORBit-2 SM X11 Xext Xinerama Xrandr Xrender \
		atk-1.0 c fontconfig freetype gdk-x11-2.0 \
		gdk_pixbuf-2.0 glib-2.0 gmodule-2.0 \
		gobject-2.0 gthread-2.0 gtk-x11-2.0 m \
		pango-1.0 pangoft2-1.0 pangocairo-1.0 \
		popt pthread cairo glitz png z

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/metacity/2.10/}
EXTRACT_SUFX=		.tar.bz2

MODULES=		devel/gettext

BUILD_DEPENDS=		:pkgconfig-*:devel/pkgconfig \
			:p5-XML-Parser-*:textproc/p5-XML-Parser
LIB_DEPENDS=		gconf-2::devel/gconf2 \
			startup-notification-1::devel/startup-notification

SEPARATE_BUILD=		concurrent
USE_X11=		Yes
USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS+=	--with-gconf-schema-file-dir=${LOCALBASE}/share/schemas/metacity
CONFIGURE_ARGS+=	--disable-schemas-install
CONFIGURE_ENV=  	CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib" \
			CFLAGS="${CFLAGS} -I${LOCALBASE}/include -I${X11BASE}/include"

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/doc/metacity && \
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/metacity/; \
	${INSTALL_DATA} ${WRKSRC}/doc/theme-format.txt ${PREFIX}/share/doc/metacity/; \
	${INSTALL_DATA} ${WRKSRC}/doc/metacity-theme.dtd ${PREFIX}/share/doc/metacity/

.include <bsd.port.mk>
