COMMENT=		DVD authoring application

DISTNAME=		DVDStyler-3.2.1
PKGNAME=		${DISTNAME:L}
REVISION=		1
CATEGORIES=		multimedia
SITES=			${SITE_SOURCEFORGE:=dvdstyler/}
EXTRACT_SUFX=		.tar.bz2

HOMEPAGE=		https://www.dvdstyler.org/

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} avcodec avfilter avformat avutil
WANTLIB += c dbus-1 exif fontconfig freetype jpeg m swscale wx_baseu-3.2
WANTLIB += wx_baseu_net-3.2 wx_gtk3u_core-3.2 wx_gtk3u_html-3.2
WANTLIB += wx_gtk3u_media-3.2 wxsvg

COMPILER=		base-clang ports-gcc base-gcc

BUILD_DEPENDS=		archivers/zip \
			multimedia/dvdauthor \
			multimedia/mjpegtools \
			sysutils/dvd+rw-tools \
			textproc/xmlto \
			devel/gettext,-tools

RUN_DEPENDS=		devel/desktop-file-utils \
			multimedia/dvdauthor \
			multimedia/mjpegtools \
			multimedia/xine-ui \
			sysutils/dvd+rw-tools

LIB_DEPENDS=		graphics/ffmpeg \
			graphics/libexif \
			x11/wxSVG \
			x11/wxWidgets,-media

# FIXME: locale/Makefile uses gmake constructs
USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			OBJCXX="${CXX}"

NO_TEST=		Yes

.include <bsd.port.mk>
