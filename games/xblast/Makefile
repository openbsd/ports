# $OpenBSD: Makefile,v 1.21 2007/08/08 14:59:47 aanriot Exp $

COMMENT=	graphical multi-player real-time strategy game for X11

DISTNAME=	xblast-2.10.2
DIST_SUBDIR=	xblast
DISTFILES=	${DISTNAME}${EXTRACT_SUFX} \
		images-2005-01-06${EXTRACT_SUFX} \
		levels-2005-01-06${EXTRACT_SUFX} \
		models-2005-01-06${EXTRACT_SUFX} \
		musics-2005-01-06${EXTRACT_SUFX} \
		sounds${EXTRACT_SUFX}
CATEGORIES=	games

HOMEPAGE=	http://xblast.sourceforge.net/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c ICE m ossaudio X11

MASTER_SITES=   ${MASTER_SITE_SOURCEFORGE:=xblast/}

USE_X11=	Yes

CONFIGURE_STYLE=	autoconf
AUTOCONF_VERSION=	2.59
CONFIGURE_ENV=		LDFLAGS="-lossaudio"
CONFIGURE_ARGS=		--enable-sound \
			--with-otherdatadir=$(PREFIX)/share/xblast
post-extract:
	@cp -r ${WRKDIR}/images-2005-01-06 ${WRKSRC}/image
	@cp -r ${WRKDIR}/levels-2005-01-06 ${WRKSRC}/level
	@cp -r ${WRKDIR}/models-2005-01-06 ${WRKSRC}/image/sprite
	@cp -r ${WRKDIR}/sounds ${WRKSRC}/sounds
	@cp -r ${WRKDIR}/musics-2005-01-06/* ${WRKSRC}/sounds

NO_REGRESS=	Yes

.include <bsd.port.mk>
