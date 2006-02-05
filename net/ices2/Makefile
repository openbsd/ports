# $OpenBSD: Makefile,v 1.4 2006/02/05 15:34:53 alek Exp $

COMMENT=	"icecast source for streaming Ogg Vorbis"

DISTNAME=	ices-2.0.1
PKGNAME=	${DISTNAME}p2
CATEGORIES=	net audio

HOMEPAGE=	http://www.icecast.org/

MAINTAINER=	Moritz Grimm <gtgbr@gmx.net>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m pthread z ogg vorbis vorbisenc

MASTER_SITES=	http://downloads.xiph.org/releases/ices/

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--program-suffix=2
	
USE_LIBTOOL=	Yes
MODULES=	converters/libiconv
BUILD_DEPENDS=	::devel/pkgconfig
LIB_DEPENDS=	shout.3::net/libshout \
		xml2.9::textproc/libxml

SEPARATE_BUILD=	simple

pre-patch:
	@sed -e 's,oss,sun,g' < ${WRKSRC}/conf/ices-oss.xml \
		> ${WRKSRC}/conf/ices-sun.xml

.include <bsd.port.mk>
