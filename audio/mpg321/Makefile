# $OpenBSD: Makefile,v 1.8 2002/01/16 00:02:28 naddy Exp $

COMMENT=	"free clone of mpg123, a command-line mp3 player"

DISTNAME=	mpg321-0.2.3
CATEGORIES=	audio
NEED_VERSION=	1.435
HOMEPAGE=	http://sourceforge.net/projects/mpg321/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR=	mpg321

LIB_DEPENDS=	ao.2::audio/libao \
		mad.0::audio/mad

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-mpg123-symlink
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
