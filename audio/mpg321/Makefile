# $OpenBSD: Makefile,v 1.32 2019/07/12 20:43:36 sthen Exp $

COMMENT=	free clone of mpg123, a command-line mp3 player

VERSION=	0.3.2
PKGNAME=	mpg321-${VERSION}
REVISION=	1
CATEGORIES=	audio
HOMEPAGE=	http://mpg321.sourceforge.net/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPLv2
PERMIT_PACKAGE=	Yes

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
