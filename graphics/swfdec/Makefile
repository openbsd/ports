# $OpenBSD: Makefile,v 1.20 2008/08/20 15:55:15 jasper Exp $

COMMENT=	flash rendering library
DISTNAME=	swfdec-0.6.8
SHARED_LIBS +=	swfdec-0.6           0.0      # .90.0
SHARED_LIBS +=	swfdec-gtk-0.6       0.0      # .90.0
CATEGORIES=	graphics

HOMEPAGE=	http://swfdec.sourceforge.net/

# LGPLv2.1
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}/download/swfdec/0.6/

WANTLIB=	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes \
		Xi Xinerama Xrandr Xrender atk-1.0 cairo expat fontconfig \
		freetype gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0 \
		gstreamer-0.10 gthread-2.0 m oil-0.3 pango-1.0 pangocairo-1.0 \
		pangoft2-1.0 pcre pixman-1 png xml2 z

LIB_DEPENDS=		mad::audio/libmad \
			soup-2.4::devel/libsoup \
			gstpbutils-0.10::multimedia/gstreamer-0.10/plugins-base \
			gdk_pixbuf-2.0,gdk-x11-2.0,gtk-x11-2.0::x11/gtk+2


MODULES=		devel/gettext

USE_X11=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-audio=oss \
			--enable-mad \
			--enable-gstreamer
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			PKG_CONFIG_PATH="${LOCALBASE}/lib/pkgconfig"

.include <bsd.port.mk>
