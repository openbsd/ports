# $OpenBSD: Makefile,v 1.65 2020/03/16 15:07:55 ratchov Exp $

COMMENT=		front-end to various audio players

DISTNAME=		gqmpeg-0.91.1
REVISION=		15
CATEGORIES=		audio

HOMEPAGE=		http://gqmpeg.sourceforge.net/

# GPL
PERMIT_PACKAGE=	Yes

WANTLIB =  GL X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 c cairo expat fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gthread-2.0 gtk-x11-2.0 iconv intl m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pixman-1 png pthread xcb
WANTLIB += xcb-render xcb-shm z

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=gqmpeg/}

RUN_DEPENDS=		audio/mpg321 \
			devel/desktop-file-utils
LIB_DEPENDS=		x11/gtk+2

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			LIBS="-lm" \
			ac_cv_path_GNOME_CONFIG=no

DOCS=			FAQ README SKIN-SPECS-V1 \
			plugin/README.plugin

post-install:
	    ${INSTALL_DATA_DIR} ${PREFIX}/share/doc/gqmpeg
.for d in ${DOCS}
	    ${INSTALL_DATA} ${WRKSRC}/$d ${PREFIX}/share/doc/gqmpeg
.endfor

.include <bsd.port.mk>
