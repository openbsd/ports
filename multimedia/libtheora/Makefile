# $OpenBSD: Makefile,v 1.2 2005/07/09 04:19:30 jolan Exp $

COMMENT=	"open video codec"
DISTNAME=	libtheora-1.0alpha4
CATEGORIES=	multimedia
MASTER_SITES=	http://downloads.xiph.org/releases/theora/

HOMEPAGE=	http://www.theora.org/

MAINTAINER=	Vladimir Tamara Patino <vtamara@pasosdejesus.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	:pkgconfig-*:devel/pkgconfig

LIB_DEPENDS=	vorbis.4,vorbisenc.2,vorbisfile.4::audio/libvorbis

WANTLIB=	ogg

CONFIGURE_STYLE=gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/libtheora
	${INSTALL_DATA} ${WRKSRC}/doc/{color.html,vp3-format.txt} \
		${PREFIX}/share/doc/libtheora
			
.include <bsd.port.mk>
