# $OpenBSD: Makefile,v 1.5 2001/08/20 21:39:26 naddy Exp $

BROKEN=		"not yet updated for libao.so.2"

COMMENT=	"free clone of mpg123, a command-line mp3 player"

DISTNAME=	mpg321-0.1.5
CATEGORIES=	audio
NEED_VERSION=	1.435

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://people.debian.org/~drew/
DISTFILES=	${DISTNAME:S/-/_/}${EXTRACT_SUFX}

LIB_DEPENDS=	ao.1::audio/libao \
		mad.0::audio/mad

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
