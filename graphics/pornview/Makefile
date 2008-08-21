# $OpenBSD: Makefile,v 1.11 2008/08/21 13:12:32 jasper Exp $

COMMENT=	image viewer/manager

DISTNAME=	pornview-0.2.0pre1
PKGNAME=	${DISTNAME}p4
CATEGORIES=	graphics

HOMEPAGE=	http://pornview.sourceforge.net/
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=pornview/}

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

FLAVORS=		mplayer
FLAVOR?=

WANTLIB=	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes \
		Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig \
		freetype glib-2.0 glitz gmodule-2.0 gobject-2.0 m pango-1.0 \
		pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png z

MODULES=		devel/gettext
RUN_DEPENDS=		:desktop-file-utils-*:devel/desktop-file-utils

LIB_DEPENDS=		charset::converters/libiconv \
			gdk_pixbuf-2.0,gdk-x11-2.0,gtk-x11-2.0::x11/gtk+2

USE_X11=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-gtk2
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include \
			  -I${LOCALBASE}/include/libpng" \
			LDFLAGS="-L${LOCALBASE}/lib" 

.if ${FLAVOR:L:Mmplayer}
CONFIGURE_ARGS+=	--enable-mplayer
RUN_DEPENDS+=		:mplayer-*:x11/mplayer
.endif

.include <bsd.port.mk>
