# $OpenBSD: Makefile,v 1.19 2008/10/07 21:47:48 landry Exp $

COMMENT=		tag editor for various audio file formats

DISTNAME=		easytag-2.1
PKGNAME=		${DISTNAME}p3
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

WANTLIB=		X11 Xau Xcursor Xdmcp Xext Xfixes Xi Xinerama Xrandr \
			Xrender atk-1.0 c cairo expat fontconfig freetype \
			Xcomposite Xdamage pcre \
			glib-2.0 glitz gmodule-2.0 gobject-2.0 m ogg pango-1.0 \
			pangocairo-1.0 pangoft2-1.0 pixman-1 png stdc++ z

RUN_DEPENDS=		:desktop-file-utils-*:devel/desktop-file-utils
LIB_DEPENDS=		id3.>=3::audio/id3lib \
			FLAC.>=4::audio/flac \
			mp4v2::multimedia/libmp4v2 \
			vorbis.>=1,vorbisfile.>=1::audio/libvorbis \
			gdk-x11-2.0,gdk_pixbuf-2.0,gtk-x11-2.0::x11/gtk+2

USE_LIBTOOL=		Yes
USE_GMAKE=		Yes
USE_X11=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--disable-wavpack
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/easytag
	${INSTALL_DATA} ${WRKSRC}/USERS-GUIDE ${PREFIX}/share/doc/easytag

.include <bsd.port.mk>
