# $OpenBSD: Makefile,v 1.5 2010/05/03 09:45:33 dcoppa Exp $

COMMENT=		console based player for last.fm radio streams

DISTNAME=		shell-fm-0.7
PKGNAME=		${DISTNAME}p1
CATEGORIES=		audio

HOMEPAGE=		http://nex.scrapping.cc/code/shell-fm/

MAINTAINER=		David Coppa <dcoppa@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www.phil.uu.nl/~lievisse/distfiles/

LIB_DEPENDS=		ao::audio/libao \
			mad::audio/libmad \
			tag,tag_c::audio/taglib
WANTLIB=		c m

USE_GMAKE=		yes
FAKE_FLAGS=		DESTDIR="${WRKINST}${PREFIX}"

NO_REGRESS=		yes

.include <bsd.port.mk>
