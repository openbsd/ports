# $OpenBSD: Makefile,v 1.7 2005/11/14 12:13:34 wilfried Exp $

COMMENT=	"gtk livejournal client"

VERSION=	4.0.1
DISTNAME=	logjam-${VERSION}
PKGNAME=	${DISTNAME}p1
CATEGORIES=	misc x11

HOMEPAGE=	http://logjam.danga.com/

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
WANTLIB=		X11 atk-1.0.0.0 c cairo crypto fontconfig freetype \
			m pango-1.0.0.0 pangocairo-1.0.0.0 pangoft2-1.0.0.0 \
			ssl z

MASTER_SITES=	http://logjam.danga.com/download/

MODULES=	devel/gettext

BUILD_DEPENDS+=	::devel/pkgconfig
LIB_DEPENDS=	glib-2.0.0.0,gobject-2.0.0.0,gmodule-2.0.0.0::devel/glib2 \
		gtk-x11-2.0.0.0,gdk-x11-2.0.0.0,gdk_pixbuf-2.0.0.0::x11/gtk+2 \
		curl.2::net/curl \
		xml2::textproc/libxml

PORTHOME=	${WRKDIR}

CONFIGURE_ARGS+=	--without-gnome
CONFIGURE_ARGS+=	--with-xmms=runtime

USE_X11=        	Yes
CONFIGURE_STYLE=	gnu

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
