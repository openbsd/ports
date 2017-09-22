# $OpenBSD: Makefile,v 1.38 2017/09/22 22:47:23 sthen Exp $

COMMENT=		DVD authoring application

DISTNAME=		DVDStyler-2.9.4
PKGNAME=		${DISTNAME:L}
CATEGORIES=		multimedia
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=dvdstyler/}
EXTRACT_SUFX=		.tar.bz2
REVISION=		2

HOMEPAGE=		http://www.dvdstyler.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ${COMPILER_LIBCXX} ICE ORBit-2 SM X11 Xcomposite Xcursor
WANTLIB += Xdamage Xext Xfixes Xi Xinerama Xrandr Xrender art_lgpl_2
WANTLIB += atk-1.0 avcodec avfilter avformat avutil bonobo-2 bonobo-activation
WANTLIB += bonoboui-2 c cairo dbus-1 exif fontconfig freetype
WANTLIB += gconf-2 gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gnome-2 gnomecanvas-2 gnomeui-2 gnomevfs-2
WANTLIB += gobject-2.0 gthread-2.0 gtk-x11-2.0 intl jpeg m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 popt swscale wx_base wx_base_net
WANTLIB += wx_gtk2_adv wx_gtk2_core wx_gtk2_html wx_gtk2_media
WANTLIB += wxsvg z

BUILD_DEPENDS=		archivers/zip \
			multimedia/dvdauthor \
			multimedia/mjpegtools \
			sysutils/dvd+rw-tools \
			textproc/xmlto \
			devel/gettext-tools

RUN_DEPENDS=		devel/desktop-file-utils \
			multimedia/dvdauthor \
			multimedia/mjpegtools \
			multimedia/xine-ui \
			sysutils/dvd+rw-tools

LIB_DEPENDS=		graphics/ffmpeg \
			graphics/libexif \
			x11/gnome/libgnomeui \
			x11/wxSVG \
			x11/wxWidgets \
			x11/wxWidgets,-media

# FIXME: locale/Makefile uses gmake constructs
USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			OBJCXX="${CXX}"

NO_TEST=		Yes

.include <bsd.port.mk>
