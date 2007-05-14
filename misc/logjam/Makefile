# $OpenBSD: Makefile,v 1.15 2007/05/14 22:24:27 naddy Exp $

COMMENT=	"gtk livejournal client"

VERSION=	4.0.1
DISTNAME=	logjam-${VERSION}
PKGNAME=	${DISTNAME}p6
CATEGORIES=	misc x11

HOMEPAGE=	http://logjam.danga.com/

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
WANTLIB=		X11 Xau Xcursor Xdmcp Xext Xfixes Xi Xinerama \
			Xrandr Xrender atk-1.0 c cairo crypto expat \
			fontconfig freetype glitz idn m pango-1.0 \
			pangocairo-1.0 pangoft2-1.0 png ssl z

MASTER_SITES=	http://logjam.danga.com/download/

MODULES=	devel/gettext

LIB_DEPENDS=	glib-2.0,gobject-2.0,gmodule-2.0::devel/glib2 \
		gtk-x11-2.0,gdk-x11-2.0,gdk_pixbuf-2.0::x11/gtk+2 \
		curl.>=2::net/curl \
		xml2::textproc/libxml

PORTHOME=	${WRKDIR}

CONFIGURE_ARGS+=	--without-gnome
CONFIGURE_ARGS+=	--with-xmms=runtime

USE_X11=        	Yes
CONFIGURE_STYLE=	gnu

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
