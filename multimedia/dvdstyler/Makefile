# $OpenBSD: Makefile,v 1.16 2010/10/24 21:27:41 ajacoutot Exp $

COMMENT=		DVD authoring application

DISTNAME=		DVDStyler-1.8.0.3
PKGNAME=		${DISTNAME:L}
REVISION=		1
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

WANTLIB= ICE ORBit-2 SM X11 Xau Xcomposite Xcursor \
	Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr \
	Xrender art_lgpl_2 atk-1.0 bonobo-2 \
	bonobo-activation bonoboui-2 bz2 c cairo \
	dbus-1 exif expat faac faad fontconfig freetype \
	gailutil gconf-2 gdk-x11-2.0 gdk_pixbuf-2.0 \
	gio-2.0 glib-2.0 gmodule-2.0 gnome-2 \
	gnome-keyring gnomecanvas-2 gnomeui-2 gnomevfs-2 \
	gobject-2.0 gsm gthread-2.0 gtk-x11-2.0 \
	jpeg m mp3lame ogg orc-0.4 pango-1.0 \
	pangocairo-1.0 pangoft2-1.0 pixman-1 \
	png popt pthread pthread-stubs \
	schroedinger-1.0 speex stdc++ theora \
	vorbis vorbisenc wx_base wx_base_net \
	wx_gtk2_adv wx_gtk2_core wx_gtk2_html wxsvg \
	x264 xcb xcb-render xcb-render-util xml2 z \
	avcodec.>=14 avformat.>=13 avutil.>=7 swscale.>=2

BUILD_DEPENDS=		::archivers/zip \
			::multimedia/dvdauthor \
			::multimedia/mjpegtools \
			::multimedia/mpgtx \
			::sysutils/dvd+rw-tools \
			::textproc/xmlto
LIB_DEPENDS=		::graphics/libexif \
			::x11/gnome/libgnomeui \
			::x11/wxSVG \
			:ffmpeg->=20100512:graphics/ffmpeg
RUN_DEPENDS=		::devel/desktop-file-utils \
			::multimedia/dvdauthor \
                        ::multimedia/mjpegtools \
                        ::multimedia/mpgtx \
			::multimedia/xine-ui \
                        ::sysutils/dvd+rw-tools

# FIXME: locale/Makefile uses gmake constructs
USE_GMAKE=		Yes
USE_GROFF =	Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

NO_REGRESS=		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/dvdstyler/templates
	${INSTALL_DATA} ${WRKSRC}/templates/*.{dvdt,png} \
		${PREFIX}/share/dvdstyler/templates

.include <bsd.port.mk>
