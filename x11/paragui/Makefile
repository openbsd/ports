# $OpenBSD: Makefile,v 1.9 2002/12/29 20:31:41 fgsch Exp $

COMMENT=	"cross-platform high-level application framework"

VERSION=	0.7.2
DISTNAME=	paragui-${VERSION}
CATEGORIES=	x11 devel

HOMEPAGE=	http://www.bms-austria.com/projects/paragui/

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://ftp.bms-austria.com/pub/paragui/release/

BUILD_DEPENDS=	:zip-*:archivers/zip

LIB_DEPENDS=	SDL::devel/sdl \
		SDL_ttf::devel/sdl-ttf \
		SDL_image::devel/sdl-image \
		ttf::print/freetype

USE_X11=	Yes
USE_GMAKE=	Yes

CONFIGURE_STYLE= gnu
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC} ${WRKSRC}/test
CONFIGURE_ENV=	LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib" \
		LIBS=-pthread
PATCH_LIST=	${PORTSDIR}/infrastructure/patches/patch-lt1.3.5-ltconfig \
		${PORTSDIR}/infrastructure/patches/patch-lt1.3.5-ltmain_sh \
		patch-*

.include <bsd.port.mk>
