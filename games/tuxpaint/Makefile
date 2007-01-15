# $OpenBSD: Makefile,v 1.1.1.1 2007/01/15 16:39:40 ajacoutot Exp $

COMMENT=	"drawing program for children"

DISTNAME=	tuxpaint-0.9.16
CATEGORIES=	games graphics

HOMEPAGE=	http://www.tuxpaint.org/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=tuxpaint/}

WANTLIB=	X11 Xext c m png pthread usbhid

MODULES=	devel/gettext
LIB_DEPENDS=	SDL.>=6::devel/sdl \
		SDL_image.>=2::devel/sdl-image \
		SDL_mixer.>=3::devel/sdl-mixer \
		SDL_ttf.>=7::devel/sdl-ttf
RUN_DEPENDS=	::graphics/netpbm

USE_X11=	Yes
USE_GMAKE=	Yes

MAKE_ENV+=	SYSCONFDIR=${SYSCONFDIR}
CFLAGS+=	-DHAVE_STRCASESTR

NO_REGRESS=	Yes

pre-build:
	perl -pi -e 's,@\$$\(CC\),\$$\(CC\),g' ${WRKSRC}/Makefile
	perl -pi -e 's,!!SYSCONFDIR!!,${SYSCONFDIR},g;' \
		-e 's,!!LOCALBASE!!,${LOCALBASE},g' \
		${WRKSRC}/src/manpage/tuxpaint.1

.include <bsd.port.mk>
