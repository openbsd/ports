# $OpenBSD: Makefile,v 1.3 2014/09/13 16:36:54 ajacoutot Exp $

COMMENT=	library providing file related widgets for pcmanfm

DISTNAME=	libfm-1.2.0
EXTRACT_SUFX=	.tar.xz

CATEGORIES=	x11 devel

SHARED_LIBS+=	fm-gtk	0.0 # 1.0
SHARED_LIBS+=	fm	0.0 # 1.0
SHARED_LIBS+=	fm-extra	0.0 # 4.0

HOMEPAGE=	http://pcmanfm.sourceforge.net/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=pcmanfm/}

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 c cairo exif expat ffi fontconfig
WANTLIB += freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 graphite2 gthread-2.0 gtk-x11-2.0
WANTLIB += harfbuzz m menu-cache pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread pthread-stubs xcb xcb-render
WANTLIB += xcb-shm z

BUILD_DEPENDS=	lang/vala
RUN_DEPENDS=	devel/desktop-file-utils \
		misc/shared-mime-info \
		x11/gnome/gvfs

LIB_DEPENDS=	graphics/libexif \
		x11/menu-cache \
		x11/gtk+2

MODULES=	devel/gettext \
		textproc/intltool

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	${CONFIGURE_SHARED}

FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples/libfm

.include <bsd.port.mk>
