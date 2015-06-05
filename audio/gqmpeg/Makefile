# $OpenBSD: Makefile,v 1.58 2015/06/05 12:20:38 ajacoutot Exp $

COMMENT=		front-end to various audio players

DISTNAME=		gqmpeg-0.91.1
REVISION=		10
CATEGORIES=		audio

HOMEPAGE=		http://gqmpeg.sourceforge.net/

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig
WANTLIB += freetype gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1 png
WANTLIB += pthread-stubs xcb z gdk_pixbuf-2.0 gdk-x11-2.0 gtk-x11-2.0
WANTLIB += gthread-2.0 pthread xcb-render GL xcb-shm

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=gqmpeg/}

MODULES=		devel/gettext

RUN_DEPENDS=		audio/mpg321 \
			devel/desktop-file-utils
LIB_DEPENDS=		x11/gtk+2

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			ac_cv_path_GNOME_CONFIG=no

DOCS=			FAQ README SKIN-SPECS-V1 \
			plugin/README.plugin

post-install:
	    ${INSTALL_DATA_DIR} ${PREFIX}/share/doc/gqmpeg
.for d in ${DOCS}
	    ${INSTALL_DATA} ${WRKSRC}/$d ${PREFIX}/share/doc/gqmpeg
.endfor

.include <bsd.port.mk>
