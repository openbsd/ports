# $OpenBSD: Makefile,v 1.28 2014/04/07 06:43:12 brad Exp $

COMMENT=		DVD authoring application

DISTNAME=		DVDStyler-2.7.1
PKGNAME=		${DISTNAME:L}
CATEGORIES=		multimedia
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=dvdstyler/}
EXTRACT_SUFX=		.tar.bz2

HOMEPAGE=		http://www.dvdstyler.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE ORBit-2 SM X11 Xcomposite Xcursor Xdamage Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender art_lgpl_2 atk-1.0
WANTLIB += avcodec avfilter avformat avutil bonobo-2 bonobo-activation
WANTLIB += bonoboui-2 c cairo exif fontconfig freetype gconf-2
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gnome-2 gnomecanvas-2 gnomeui-2 gnomevfs-2 gobject-2.0
WANTLIB += gthread-2.0 gtk-x11-2.0 jpeg m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 popt pthread stdc++ swscale wx_base wx_base_net
WANTLIB += wx_gtk2_adv wx_gtk2_core wx_gtk2_html wx_gtk2_media
WANTLIB += wxsvg z

MODULES=		devel/gettext

BUILD_DEPENDS=		archivers/zip \
			multimedia/dvdauthor>=0.7.0 \
			multimedia/mjpegtools \
			sysutils/dvd+rw-tools \
			textproc/xmlto
RUN_DEPENDS=		devel/desktop-file-utils \
			multimedia/dvdauthor>=0.7.0 \
			multimedia/mjpegtools \
			multimedia/xine-ui \
			sysutils/dvd+rw-tools
LIB_DEPENDS=		graphics/ffmpeg>=20121026 \
			graphics/libexif \
			x11/gnome/libgnomeui \
			x11/wxSVG>=1.2.1 \
			x11/wxWidgets>=2.8.12p3 \
			x11/wxWidgets,-media>=2.8.12p0

# FIXME: locale/Makefile uses gmake constructs
USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

NO_TEST=		Yes

.include <bsd.port.mk>
