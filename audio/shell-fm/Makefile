# $OpenBSD: Makefile,v 1.1.1.1 2008/09/21 22:27:31 jasper Exp $

COMMENT=		console based player for last.fm radio streams

DISTNAME=		shell-fm-0.6
CATEGORIES=		audio
EXTRACT_SUFX=		.tar.bz2

HOMEPAGE=		http://nex.scrapping.cc/code/shell-fm/

MAINTAINER=		Guillaume Pinot <guillaume.pinot@tremplin-utc.net>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}/downloads/

LIB_DEPENDS=		ao::audio/libao \
			mad::audio/libmad
WANTLIB=		c m ossaudio pthread

USE_GMAKE=		yes
FAKE_FLAGS=		DESTDIR="${WRKINST}${PREFIX}"

NO_REGRESS=		yes

.include <bsd.port.mk>
