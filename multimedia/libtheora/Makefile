# $OpenBSD: Makefile,v 1.9 2008/07/25 14:15:55 brad Exp $

COMMENT=	open video codec

DISTNAME=	libtheora-1.0beta3
CATEGORIES=	multimedia
MASTER_SITES=	http://downloads.xiph.org/releases/theora/

SHARED_LIBS+=	theora		3.0
SHARED_LIBS+=	theoradec	1.0
SHARED_LIBS+=	theoraenc	1.0

HOMEPAGE=	http://www.theora.org/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

# uses Ogg headers
LIB_DEPENDS=	ogg.>=5::audio/libogg

USE_LIBTOOL=	Yes
SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
