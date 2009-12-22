# $OpenBSD: Makefile,v 1.2 2009/12/22 16:28:00 ajacoutot Exp $

COMMENT=	remake of Konami's F1-Spirit

DISTNAME=	f1spirit.src_0.rc9-1412
PKGNAME=	${DISTNAME:S/.src_0.rc9-/-0./}p0
WRKDIST=	${WRKDIR}/f1spirit-0.rc9

EXTRACT_SUFX=	.tgz
CATEGORIES=	games

HOMEPAGE=	http://f1spirit.jorito.net/
MASTER_SITES=	http://braingames.jorito.net/f1spirit/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

NO_REGRESS=	Yes
USE_X11=	Yes
USE_GMAKE=	Yes

RUN_DEPENDS=	::devel/desktop-file-utils
LIB_DEPENDS=	SDL_image::devel/sdl-image \
		SDL_net::devel/sdl-net \
		SDL_mixer::devel/sdl-mixer \
		curl::net/curl \
		idn::devel/libidn
WANTLIB=	GL GLU SDL c m crypto pthread ssl z

.include <bsd.port.mk>
