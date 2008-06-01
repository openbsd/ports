# $OpenBSD: Makefile,v 1.2 2008/06/01 08:21:15 sthen Exp $

COMMENT=		DVD authoring application

DISTNAME=		DVDStyler-1.6.2
PKGNAME=		${DISTNAME:L}p0
CATEGORIES=		multimedia

HOMEPAGE=		http://www.dvdstyler.de/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=dvdstyler/}

MODULES=		devel/gettext

WANTLIB=	ICE ORBit-2 SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp \
		Xext Xfixes Xi Xinerama Xrandr Xrender art_lgpl_2 atk-1.0 \
		audiofile avcodec avformat avutil bonobo-2 bonobo-activation \
		bonoboui-2 c cairo esd expat fontconfig freetype gailutil \
		gconf-2 gdk-x11-2.0 gdk_pixbuf-2.0 glib-2.0 glitz gmodule-2.0 \
		gnome-2 gnome-keyring gnomecanvas-2 gnomevfs-2 gobject-2.0 \
		gthread-2.0 gtk-x11-2.0 jpeg m pango-1.0 pangocairo-1.0 \
		pangoft2-1.0 pixman-1 png popt pthread stdc++ wx_base \
		wx_gtk2_adv wx_gtk2_core wx_gtk2_html xml2 z

BUILD_DEPENDS=		::multimedia/dvdauthor \
			::multimedia/mjpegtools \
			::multimedia/mpgtx \
			::sysutils/dvd+rw-tools
LIB_DEPENDS=		exif::graphics/libexif \
			gnomeui-2::x11/gnome/libgnomeui \
			wxsvg::x11/wxSVG
RUN_DEPENDS=		::devel/desktop-file-utils \
			::multimedia/dvdauthor \
                        ::multimedia/mjpegtools \
                        ::multimedia/mpgtx \
			::multimedia/xine-ui \
                        ::sysutils/dvd+rw-tools


USE_GMAKE=		Yes
USE_X11=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

NO_REGRESS=		Yes

.include <bsd.port.mk>
