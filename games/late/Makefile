# $OpenBSD: Makefile,v 1.2 2003/08/09 14:53:03 espie Exp $

COMMENT=	"puzzle game resembling Quix for Commdore 64"
DISTNAME=	late-0.0.3
EXTRACT_SUFX=	.tar.bz2
CATEGORIES=	games x11
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=late/}

HOMEPAGE=	http://late.sourceforge.net/

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MODULES=	gcc3
MODGCC3_ARCHES=	sparc64
MODGCC3_LANGS=	C++
LIB_DEPENDS=	SDL_image::devel/sdl-image

USE_X11=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include"

.include <bsd.port.mk>
