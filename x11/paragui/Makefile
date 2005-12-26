# $OpenBSD: Makefile,v 1.15 2005/12/26 16:45:43 naddy Exp $

COMMENT=	"cross-platform high-level application framework"

DISTNAME=	paragui-0.7.2
PKGNAME=	${DISTNAME}p0
SHARED_LIBS=	paragui 2.0
MODGNU_SHARED_LIBS=	paragui ''
CATEGORIES=	x11 devel

HOMEPAGE=	http://www.bms-austria.com/projects/paragui/

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	X11 Xext freetype jpeg m png stdc++ tiff usbhid z

MASTER_SITES=	ftp://ftp.bms-austria.com/pub/paragui/release/

BUILD_DEPENDS=	:zip-*:archivers/zip

LIB_DEPENDS=	SDL::devel/sdl \
		SDL_ttf::devel/sdl-ttf \
		SDL_image::devel/sdl-image 

USE_X11=	Yes
USE_GMAKE=	Yes
USE_LIBTOOL=	Yes

CONFIGURE_STYLE= gnu
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC} ${WRKSRC}/test
CONFIGURE_ENV=	LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib" \
		LIBS=-pthread

.include <bsd.port.mk>
