# $OpenBSD: Makefile,v 1.8 2009/07/19 22:49:12 sthen Exp $

COMMENT=		DVD authoring application

DISTNAME=		DVDStyler-1.7.0
PKGNAME=		${DISTNAME:L}p2
CATEGORIES=		multimedia

HOMEPAGE=		http://www.dvdstyler.de/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=dvdstyler/}
EXTRACT_SUFX=		.tar.bz2

MODULES=		devel/gettext

WANTLIB=	ICE ORBit-2 SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp \
		Xext Xfixes Xi Xinerama Xrandr Xrender a52 art_lgpl_2 \
		atk-1.0 bonobo-2 bonobo-activation bonoboui-2 \
		bz2 c cairo expat faac faad fontconfig freetype \
		gailutil gconf-2 gdk-x11-2.0 gdk_pixbuf-2.0 glib-2.0 \
		glitz gmodule-2.0 gnome-2 gnome-keyring gnomecanvas-2 \
		gnomevfs-2 gobject-2.0 gthread-2.0 gtk-x11-2.0 jpeg \
		m mp3lame ogg pango-1.0 pangocairo-1.0 pangoft2-1.0 \
		pixman-1 png popt pthread stdc++ theora vorbis vorbisenc \
		wx_base wx_gtk2_adv wx_gtk2_core wx_gtk2_html x264 xml2 z \
		dbus-1 gio-2.0 oil-0.3 schroedinger-1.0

BUILD_DEPENDS=		:autoconf-${AUTOCONF_VERSION}:devel/autoconf/${AUTOCONF_VERSION} \
			::multimedia/dvdauthor \
			::multimedia/mjpegtools \
			::multimedia/mpgtx \
			::sysutils/dvd+rw-tools
LIB_DEPENDS=		exif::graphics/libexif \
			gnomeui-2::x11/gnome/libgnomeui \
			wxsvg::x11/wxSVG \
			avcodec.>=13.1,avformat.>=12,avutil.>=6,swscale.>=1:ffmpeg->=20080620p10:graphics/ffmpeg
RUN_DEPENDS=		::devel/desktop-file-utils \
			::multimedia/dvdauthor \
                        ::multimedia/mjpegtools \
                        ::multimedia/mpgtx \
			::multimedia/xine-ui \
                        ::sysutils/dvd+rw-tools


USE_GMAKE=		Yes
USE_X11=		Yes
CONFIGURE_STYLE=	automake
AUTOMAKE_VERSION=	1.8
AUTOCONF_VERSION=	2.61
CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

NO_REGRESS=		Yes

pre-configure:
	cd ${WRKSRC} && env AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} ./autogen.sh

.include <bsd.port.mk>
