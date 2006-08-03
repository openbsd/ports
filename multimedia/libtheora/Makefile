# $OpenBSD: Makefile,v 1.6 2006/08/03 23:15:57 espie Exp $

COMMENT=	"open video codec"
DISTNAME=	libtheora-1.0alpha7
CATEGORIES=	multimedia
SHARED_LIBS=	theora	2.0

MASTER_SITES=	http://downloads.xiph.org/releases/theora/

HOMEPAGE=	http://www.theora.org/

MAINTAINER=	Vladimir Tamara Patino <vtamara@pasosdejesus.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	:pkgconfig-*:devel/pkgconfig
# uses Ogg headers
LIB_DEPENDS=	ogg.>=5::audio/libogg

USE_LIBTOOL=	Yes
SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
