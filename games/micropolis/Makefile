# $OpenBSD: Makefile,v 1.9 2008/09/11 21:45:43 martynas Exp $

COMMENT=	city-building simulation

DISTNAME=	micropolis-20080211
PKGNAME=	${DISTNAME}p0
WRKDIST=	${WRKDIR}/micropolis

CATEGORIES=	games

HOMEPAGE=	http://www.donhopkins.com/home/micropolis/
MASTER_SITES=	http://freedaemon.com/~deanna/

MAINTAINER=	Deanna Phillips <deanna@openbsd.org>

# GPLv3
# beware of SimCity, tm of Electronic Arts
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

NO_REGRESS=	Yes
USE_X11=	Yes
RUN_DEPENDS=	::devel/desktop-file-utils
WANTLIB=	c m X11 Xext Xpm pthread
LIB_DEPENDS=	SDL::devel/sdl \
		SDL_mixer::devel/sdl-mixer

CFLAGS+=	-I${LOCALBASE}/include -I${X11BASE}/include

do-configure:
	@perl -pi -e s,%%PREFIX%%,${PREFIX}, ${WRKDIST}/Micropolis
	@perl -pi -e s,%%PREFIX%%,${PREFIX}, ${WRKDIST}/res/micropolis.tcl
	@perl -pi -e s,%%LOCALBASE%%,${LOCALBASE}, ${WRKDIST}/res/micropolis.tcl
	@perl -pi -e s,%%X11BASE%%,${X11BASE},g ${WRKSRC}/src/tclx/config.mk
	@perl -pi -e s,%%X11BASE%%,${X11BASE},g ${WRKSRC}/src/tk/makefile

.include <bsd.port.mk>
