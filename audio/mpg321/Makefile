# $OpenBSD: Makefile,v 1.13 2003/12/10 21:28:58 naddy Exp $

COMMENT=	"free clone of mpg123, a command-line mp3 player"

DISTNAME=	mpg321-0.2.10
CATEGORIES=	audio
HOMEPAGE=	http://mpg321.sourceforge.net/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=mpg321/}

LIB_DEPENDS=	ao.3::audio/libao \
		id3tag.2::audio/libid3tag \
		mad.2::audio/libmad

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-mpg123-symlink
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
