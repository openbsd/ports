# $OpenBSD: Makefile,v 1.30 2019/07/12 20:46:26 sthen Exp $

COMMENT=	graphical multi-player real-time strategy game for X11

DISTNAME=	xblast-2.10.4
REVISION=	3
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
PERMIT_PACKAGE=	Yes

WANTLIB=	ICE X11 c iconv intl m sndio

MASTER_SITES=   ${MASTER_SITE_SOURCEFORGE:=xblast/}

BUILD_DEPENDS=	devel/gettext,-tools

LIB_DEPENDS=	devel/gettext,-runtime

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
