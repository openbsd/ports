# $OpenBSD: Makefile,v 1.3 2005/12/30 05:35:56 jakemsr Exp $

COMMENT=	"open video codec"
DISTNAME=	libtheora-1.0alpha4
PKGNAME=	${DISTNAME}p0
CATEGORIES=	multimedia
SHARED_LIBS=		theora	1.0
MODGNU_SHARED_LIBS=	theora	''

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
LIB_DEPENDS=	ogg.5::audio/libogg

USE_LIBTOOL=	Yes
SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE=gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/libtheora
	${INSTALL_DATA} ${WRKSRC}/doc/{color.html,vp3-format.txt} \
		${PREFIX}/share/doc/libtheora
			
.include <bsd.port.mk>
