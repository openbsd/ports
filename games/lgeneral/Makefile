# $OpenBSD: Makefile,v 1.21 2020/04/17 15:49:58 naddy Exp $

COMMENT=	turn-based strategy engine

DISTNAME=	lgeneral-1.4.3
CATEGORIES=	games x11

DISTFILES=	${DISTNAME}${EXTRACT_SUFX} \
		kukgen-data-1.1.tar.gz

HOMEPAGE=	http://lgames.sourceforge.net/LGeneral/

# GPLv2 / CC BY-SA 3.0 (data)
PERMIT_PACKAGE=   Yes

WANTLIB += SDL SDL_mixer c intl m pthread

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=lgeneral/}

BUILD_DEPENDS=	devel/gettext,-tools
LIB_DEPENDS=	devel/gettext,-runtime \
		devel/sdl-mixer
RUN_DEPENDS=	devel/desktop-file-utils \
		x11/gtk+3,-guic

SEPARATE_BUILD=	Yes
AUTOCONF_VERSION=2.69
CONFIGURE_STYLE= autoconf
CONFIGURE_ENV+=		LDFLAGS=-L${LOCALBASE}/lib \
			CPPFLAGS=-I${LOCALBASE}/include
CFLAGS += -fgnu89-inline

DATA=		lgeneral-data-1.1-d4d831b06c39a4d20dd0a96d0a89e3d50f22e69a

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/lgeneral/
	${INSTALL_DATA} ${WRKSRC}/README.lgeneral ${PREFIX}/share/doc/lgeneral/
	${INSTALL_DATA} ${WRKSRC}/README.lgc-pg ${PREFIX}/share/doc/lgeneral/
	cd ${WRKDIR}/${DATA}/ && pax -rw {gfx,maps,nations,scenarios,sounds,units} \
		${PREFIX}/share/lgeneral/

.include <bsd.port.mk>
