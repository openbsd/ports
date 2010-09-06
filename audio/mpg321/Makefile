# $OpenBSD: Makefile,v 1.22 2010/09/06 00:04:28 sthen Exp $

# not very useful with static libao
SHARED_ONLY=	Yes

COMMENT=	free clone of mpg123, a command-line mp3 player

DISTNAME=	mpg321-0.2.10
REVISION=	3
CATEGORIES=	audio
HOMEPAGE=	http://mpg321.sourceforge.net/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		ao.>=3 c id3tag.>=2 mad.>=2 z

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=mpg321/}

LIB_DEPENDS=	::audio/libao \
		::audio/libid3tag \
		::audio/libmad

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-mpg123-symlink
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
