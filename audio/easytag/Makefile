# $OpenBSD: Makefile,v 1.27 2010/10/24 21:00:29 ajacoutot Exp $

COMMENT=		tag editor for various audio file formats

DISTNAME=		easytag-2.1
REVISION=		9
CATEGORIES=		audio x11

HOMEPAGE=		http://easytag.sourceforge.net/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=easytag/}
EXTRACT_SUFX=		.tar.bz2

MODULES=		devel/gettext

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig
WANTLIB += freetype gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 m ogg
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png
WANTLIB += pthread-stubs stdc++ xcb z id3.>=3 FLAC.>=4 mp4v2 vorbis.>=1
WANTLIB += vorbisfile.>=1 wavpack gdk-x11-2.0 gdk_pixbuf-2.0 gtk-x11-2.0
WANTLIB += gthread-2.0 pthread xcb-render xcb-render-util

RUN_DEPENDS=		:desktop-file-utils-*:devel/desktop-file-utils
LIB_DEPENDS=		::audio/id3lib \
			::audio/flac \
			::multimedia/libmp4v2 \
			::audio/libvorbis \
			::audio/wavpack \
			::x11/gtk+2

USE_LIBTOOL=		Yes
USE_GMAKE=		Yes
USE_GROFF =	Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/easytag
	${INSTALL_DATA} ${WRKSRC}/USERS-GUIDE ${PREFIX}/share/doc/easytag

.include <bsd.port.mk>
