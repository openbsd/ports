# $OpenBSD: Makefile,v 1.2 2001/08/11 17:25:30 pvalchev Exp $

COMMENT=	"cross-platform high-level application framework"

VERSION=	0.7.2
DISTNAME=	paragui-${VERSION}
CATEGORIES=	x11 devel
NEED_VERSION=	1.433

HOMEPAGE=	http://www.bms-austria.com/projects/paragui/

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://ftp.bms-austria.com/pub/paragui/release/

BUILD_DEPENDS=	zip:zip-*:archivers/zip

LIB_DEPENDS=	SDL.0.3:sdl-*-!no_x11:devel/sdl \
		SDL_ttf.0.3:sdl-ttf-*:devel/sdl-ttf \
		SDL_image.0.0:sdl-image-*:devel/sdl-image

USE_X11=	Yes
USE_GMAKE=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib" \
		LIBS=-pthread

.include <bsd.port.mk>
