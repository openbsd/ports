# $OpenBSD: Makefile,v 1.37 2013/05/31 15:34:40 ajacoutot Exp $

COMMENT=		tag editor for various audio file formats

DISTNAME=		easytag-2.1.7
REVISION=		2
CATEGORIES=		audio x11

HOMEPAGE=		http://projects.gnome.org/easytag/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=easytag/}
EXTRACT_SUFX=		.tar.bz2

MODULES=		devel/gettext

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig
WANTLIB += freetype gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 m ogg
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png
WANTLIB += pthread-stubs stdc++ xcb z id3>=3 FLAC>=4 mp4v2 vorbis>=1
WANTLIB += vorbisfile>=1 wavpack gdk-x11-2.0 gdk_pixbuf-2.0 gtk-x11-2.0
WANTLIB += gthread-2.0 pthread xcb-render GL Xxf86vm drm ffi xcb-shm
WANTLIB += id3tag speex harfbuzz

RUN_DEPENDS=		devel/desktop-file-utils
LIB_DEPENDS=		audio/id3lib \
			audio/libid3tag \
			audio/speex \
			audio/flac \
			multimedia/libmp4v2>=1.9 \
			audio/libvorbis \
			audio/wavpack \
			x11/gtk+2

USE_GMAKE=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/easytag
	${INSTALL_DATA} ${WRKSRC}/USERS-GUIDE ${PREFIX}/share/doc/easytag

.include <bsd.port.mk>
