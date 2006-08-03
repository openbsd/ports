# $OpenBSD: Makefile,v 1.3 2006/08/03 23:15:57 espie Exp $

COMMENT=		"multimedia player"

DISTNAME=		xine-ui-0.99.4
PKGNAME=		${DISTNAME}p0
CATEGORIES=		multimedia

HOMEPAGE=		http://xinehq.de/

MAINTAINER=		Jacob Meuser <jakemsr@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=xine/}

MODULES=		gettext

BUILD_DEPENDS=		::devel/pkgconfig
LIB_DEPENDS=		xine.>=14::multimedia/xine-lib \
			curl.>=2::net/curl \
			png.>=4::graphics/png

WANTLIB=		ICE SM X11 Xext Xinerama Xtst Xv Xxf86vm \
			c crypto freetype m ncurses pthread readline ssl z

USE_X11=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--disable-lirc \
			--disable-vdr-keys \
			--disable-mbs \
			--disable-xft \
			--without-aalib \
			--without-libcaca

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

.include <bsd.port.mk>
