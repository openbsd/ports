# $OpenBSD: Makefile,v 1.23 2013/03/11 11:35:43 espie Exp $

BROKEN=			needs an update

COMMENT=		DVD authoring application

DISTNAME=		DVDStyler-1.8.0.3
PKGNAME=		${DISTNAME:L}
REVISION=		5
CATEGORIES=		multimedia

HOMEPAGE=		http://www.dvdstyler.de/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=dvdstyler/}
EXTRACT_SUFX=		.tar.bz2

MODULES=		devel/gettext

WANTLIB += ICE ORBit-2 SM X11 Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender art_lgpl_2 atk-1.0 avcodec
WANTLIB += avformat avutil bonobo-2 bonobo-activation bonoboui-2
WANTLIB += bz2 c cairo exif expat fontconfig freetype gconf-2
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gnome-2 gnomecanvas-2 gnomeui-2 gnomevfs-2 gobject-2.0
WANTLIB += gsm gthread-2.0 gtk-x11-2.0 jpeg m mp3lame ogg orc-0.4
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 popt pthread
WANTLIB += schroedinger-1.0 speex stdc++ swscale theoradec theoraenc
WANTLIB += vorbis vorbisenc vpx wx_base wx_base_net wx_gtk2_adv
WANTLIB += wx_gtk2_core wx_gtk2_html wxsvg x264 z

BUILD_DEPENDS=		archivers/zip \
			multimedia/dvdauthor \
			multimedia/mjpegtools \
			multimedia/mpgtx \
			sysutils/dvd+rw-tools \
			textproc/xmlto
LIB_DEPENDS=		graphics/libexif \
			x11/gnome/libgnomeui \
			x11/wxSVG \
			graphics/ffmpeg>=20100512
RUN_DEPENDS=		devel/desktop-file-utils \
			multimedia/dvdauthor \
                        multimedia/mjpegtools \
                        multimedia/mpgtx \
			multimedia/xine-ui \
                        sysutils/dvd+rw-tools

# FIXME: locale/Makefile uses gmake constructs
USE_GMAKE=		Yes
USE_GROFF =		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

NO_TEST=		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/dvdstyler/templates
	${INSTALL_DATA} ${WRKSRC}/templates/*.{dvdt,png} \
		${PREFIX}/share/dvdstyler/templates

.include <bsd.port.mk>
