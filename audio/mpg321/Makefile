# $OpenBSD: Makefile,v 1.27 2012/07/13 09:05:38 naddy Exp $

# not very useful with static libao
SHARED_ONLY=	Yes

COMMENT=	free clone of mpg123, a command-line mp3 player

VERSION=	0.3.2
PKGNAME=	mpg321-${VERSION}
CATEGORIES=	audio
HOMEPAGE=	http://mpg321.sourceforge.net/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=mpg321/}
DISTFILES=	mpg321_${VERSION}.orig.tar.gz

WANTLIB=	ao c id3tag m mad pthread z
LIB_DEPENDS=	audio/libao \
		audio/libid3tag \
		audio/libmad

WRKDIST=	${WRKDIR}/mpg321-${VERSION}-orig
SEPARATE_BUILD=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-mpg123-symlink \
		--disable-alsa
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
