# $OpenBSD: Makefile,v 1.1.1.1 2008/10/29 16:53:57 ajacoutot Exp $

COMMENT=	Komi the Space Frog

DISTNAME=	komi-1.04
CATEGORIES=	games

HOMEPAGE=	http://komi.sourceforge.net/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=komi/}

WANTLIB=	SDL c pthread

LIB_DEPENDS=	SDL_mixer.>=3::devel/sdl-mixer

NO_REGRESS=	Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/Makefile

.include <bsd.port.mk>
