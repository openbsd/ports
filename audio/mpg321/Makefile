# $OpenBSD: Makefile,v 1.2 2001/07/27 00:57:30 naddy Exp $

COMMENT=	"free clone of mpg123, a command-line mp3 player"

DISTNAME=	mpg321-0.1.2
CATEGORIES=	audio
NEED_VERSION=	1.427

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://gemini.woot.net/~hosehead/packages/ \
		ftp://ftp.debian.org/debian/pool/main/m/mpg321/
DISTFILES=	${DISTNAME:S/-/_/}${EXTRACT_SUFX}

LIB_DEPENDS=	ao.1::audio/libao \
		mad.0::audio/mad

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
