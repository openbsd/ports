# $OpenBSD: Makefile,v 1.4 2010/11/08 15:54:53 espie Exp $

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
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

NO_REGRESS=	Yes
USE_GMAKE=	Yes

RUN_DEPENDS=	::devel/desktop-file-utils
LIB_DEPENDS=	::devel/sdl-image \
		::devel/sdl-net \
		::devel/sdl-mixer \
		::net/curl \
		::devel/libidn
WANTLIB=	GL GLU SDL c m crypto pthread ssl z SDL_image SDL_net \
		SDL_mixer curl idn

.include <bsd.port.mk>
