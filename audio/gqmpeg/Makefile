# $OpenBSD: Makefile,v 1.41 2007/10/14 14:12:42 jasper Exp $

COMMENT=		front-end to various audio players

DISTNAME=		gqmpeg-0.91.1
CATEGORIES=		audio

HOMEPAGE=		http://gqmpeg.sourceforge.net/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	X11 Xau Xcursor Xdmcp Xext Xfixes Xi Xinerama Xrandr \
		Xrender atk-1.0 c expat fontconfig freetype glib-2.0 \
		glitz gmodule-2.0 gobject-2.0 m pango-1.0 pangocairo-1.0 \
		pangoft2-1.0 png z

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=gqmpeg/}

MODULES=		devel/gettext

RUN_DEPENDS=		:mpg321-*:audio/mpg321 \
			:desktop-file-utils-*:devel/desktop-file-utils
LIB_DEPENDS=		cairo::graphics/cairo \
			gdk_pixbuf-2.0,gdk-x11-2.0,gtk-x11-2.0::x11/gtk+2

USE_X11=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include/libpng \
			-I${LOCALBASE}/include" \
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
