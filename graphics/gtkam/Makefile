# $OpenBSD: Makefile,v 1.38 2013/05/31 15:34:48 ajacoutot Exp $

COMMENT=	digital camera frontend

DISTNAME=	gtkam-0.2.0
REVISION=	0

CATEGORIES=	graphics

HOMEPAGE=	http://gphoto.sourceforge.net/proj/gtkam/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GL X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 c cairo exif exif-gtk expat
WANTLIB += ffi fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gphoto2 gphoto2_port
WANTLIB += gthread-2.0 gtk-x11-2.0 harfbuzz
WANTLIB += ltdl m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread pthread-stubs xcb xcb-render xcb-shm z

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=gphoto/}

LIB_DEPENDS=	graphics/libgphoto2>=2.5.0 \
		x11/gtk+2 \
		graphics/libexif-gtk
RUN_DEPENDS=	devel/desktop-file-utils

MODULES=	devel/gettext \
		textproc/intltool

USE_GROFF =	Yes
USE_GMAKE =	Yes

MAKE_FLAGS =	INTLLIBS='$$(LTLIBINTL)'

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -pthread"
CONFIGURE_ARGS= ${CONFIGURE_SHARED}

# minimal: don't include any GNOME dependency
CONFIGURE_ARGS +=--with-gnome=no \
		--with-gimp=no \
		--with-bonobo=no \
		--disable-scrollkeeper

.include <bsd.port.mk>
