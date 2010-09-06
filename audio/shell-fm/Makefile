# $OpenBSD: Makefile,v 1.6 2010/09/06 00:04:28 sthen Exp $

COMMENT=		console based player for last.fm radio streams

DISTNAME=		shell-fm-0.7
REVISION=		1
CATEGORIES=		audio

HOMEPAGE=		http://nex.scrapping.cc/code/shell-fm/

MAINTAINER=		David Coppa <dcoppa@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ao c m mad tag tag_c

MASTER_SITES=		http://www.phil.uu.nl/~lievisse/distfiles/

LIB_DEPENDS=		::audio/libao \
			::audio/libmad \
			::audio/taglib

USE_GMAKE=		yes
FAKE_FLAGS=		DESTDIR="${WRKINST}${PREFIX}"

NO_REGRESS=		yes

.include <bsd.port.mk>
