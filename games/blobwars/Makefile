# $OpenBSD: Makefile,v 1.1.1.1 2007/05/27 15:34:55 kili Exp $

COMMENT=	"2D arcade game"

DISTNAME=	blobwars-1.07
DISTFILES=	${DISTNAME}-1.tar.gz

CATEGORIES=	games

HOMEPAGE=	http://www.parallelrealities.co.uk/blobWars.php

MAINTAINER=	Matthias Kilian <kili@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	SDL X11 Xext c m pthread stdc++ usbhid z

# Master is kind of broken, so just mirror it.
MASTER_SITES=	http://openbsd.dead-parrot.de/distfiles/

MODULES=	devel/gettext

LIB_DEPENDS=	SDL_image.>=2::devel/sdl-image \
		SDL_mixer.>=3::devel/sdl-mixer \
		SDL_ttf.>=7::devel/sdl-ttf

RUN_DEPENDS=	:desktop-file-utils-*:devel/desktop-file-utils

MAKE_ENV+=	CXXFLAGS="${CXXFLAGS} -I${LOCALBASE}/include" \
		LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib" \
		CXX=${CXX}

USE_X11=	Yes
USE_GMAKE=	Yes

NO_REGRESS=	Yes

MAKE_FILE=	makefile
WRKDIST=	${WRKDIR}/${DISTNAME:C,-[0-9]*$,,}

.include <bsd.port.mk>
