# $OpenBSD: Makefile,v 1.3 2010/04/29 07:59:43 jasper Exp $

COMMENT=		console based player for last.fm radio streams

DISTNAME=		shell-fm-0.7
CATEGORIES=		audio

HOMEPAGE=		http://nex.scrapping.cc/code/shell-fm/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www.phil.uu.nl/~lievisse/distfiles/

LIB_DEPENDS=		ao::audio/libao \
			mad::audio/libmad \
			tag,tag_c::audio/taglib
WANTLIB=		c m ossaudio

USE_GMAKE=		yes
FAKE_FLAGS=		DESTDIR="${WRKINST}${PREFIX}"

NO_REGRESS=		yes

.include <bsd.port.mk>
