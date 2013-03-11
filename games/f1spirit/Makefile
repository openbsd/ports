# $OpenBSD: Makefile,v 1.6 2013/03/11 11:07:38 espie Exp $

COMMENT=	remake of Konami's F1-Spirit

DISTNAME=	f1spirit.src_0.rc9-1412
PKGNAME=	${DISTNAME:S/.src_0.rc9-/-0./}
REVISION =	0
WRKDIST=	${WRKDIR}/f1spirit-0.rc9

EXTRACT_SUFX=	.tgz
CATEGORIES=	games

HOMEPAGE=	http://f1spirit.jorito.net/
MASTER_SITES=	http://braingames.jorito.net/f1spirit/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

NO_TEST=	Yes
USE_GMAKE=	Yes

RUN_DEPENDS=	devel/desktop-file-utils
LIB_DEPENDS=	devel/sdl-image \
		devel/sdl-net \
		devel/sdl-mixer \
		net/curl \
		devel/libidn
WANTLIB=	GL GLU SDL c m crypto pthread ssl z SDL_image SDL_net \
		SDL_mixer curl idn

.include <bsd.port.mk>
