# $OpenBSD: Makefile,v 1.1.1.1 2003/06/24 08:11:14 jolan Exp $

COMMENT=	"flash rendering library"
DISTNAME=	swfdec-0.2.2
CATEGORIES=	graphics www
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=swfdec/}

HOMEPAGE=	http://swfdec.sourceforge.net/

MAINTAINER=	Jolan Luff <jolan@openbsd.org>

# LGPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

BUILD_DEPENDS+=	:pkgconfig->=0.12.0p1:devel/pkgconfig

LIB_DEPENDS=	SDL::devel/sdl \
		mad::audio/mad \
		art_lgpl_2.5::graphics/libart \
		gdk-x11-2.0.0.11,gdk_pixbuf-2.0.0.11,gtk-x11-2.0.0.11::x11/gtk+2

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=--disable-pixbuf-loader
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		PKG_CONFIG_PATH="${LOCALBASE}/lib/pkgconfig"

FLAVORS=	plugin
FLAVOR?=

.if ${FLAVOR:L:Mplugin}
MOZ=mozilla
BUILD_DEPENDS=	:mozilla-devel->=1.4b:www/mozilla,-devel
CFLAGS+=	-DMOZ_X11
PORTPATH+=	${WRKDIR}/bin:/usr/bin:/bin:/usr/sbin:/sbin:${LOCALBASE}/bin:${X11BASE}/bin:${LOCALBASE}/${MOZ}
.endif

.include <bsd.port.mk>
