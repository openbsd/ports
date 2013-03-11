# $OpenBSD: Makefile,v 1.27 2013/03/11 11:07:41 espie Exp $

COMMENT=	graphical multi-player real-time strategy game for X11

DISTNAME=	xblast-2.10.4
REVISION=	1
DIST_SUBDIR=	xblast
DISTFILES=	${DISTNAME}${EXTRACT_SUFX} \
		images-2005-01-06${EXTRACT_SUFX} \
		levels-2005-01-06${EXTRACT_SUFX} \
		models-2005-01-06${EXTRACT_SUFX} \
		musics-2005-01-06${EXTRACT_SUFX} \
		sounds${EXTRACT_SUFX}
CATEGORIES=	games

HOMEPAGE=	http://xblast.sourceforge.net/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	ICE X11 c m pthread-stubs sndio xcb

MASTER_SITES=   ${MASTER_SITE_SOURCEFORGE:=xblast/}


MODULES=	devel/gettext

CONFIGURE_STYLE=autoconf
AUTOCONF_VERSION=2.59
CONFIGURE_ENV=	LDFLAGS="-lsndio \
		-L${LOCALBASE}/lib -liconv -lintl"
CONFIGURE_ARGS=	--enable-sound \
		--with-otherdatadir=${PREFIX}/share/xblast \
		--disable-sdl

FAKE_FLAGS+=	localedir="${PREFIX}/share/locale"

post-extract:
	@cp -r ${WRKDIR}/images-2005-01-06 ${WRKSRC}/image
	@cp -r ${WRKDIR}/levels-2005-01-06 ${WRKSRC}/level
	@cp -r ${WRKDIR}/models-2005-01-06 ${WRKSRC}/image/sprite
	@cp -r ${WRKDIR}/sounds ${WRKSRC}/sounds
	@cp -r ${WRKDIR}/musics-2005-01-06/* ${WRKSRC}/sounds

.include <bsd.port.mk>
