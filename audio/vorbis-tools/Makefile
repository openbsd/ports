# $OpenBSD: Makefile,v 1.23 2004/09/14 23:15:30 espie Exp $

COMMENT=	"play, encode, and manage Ogg Vorbis files"

DISTNAME=	vorbis-tools-1.0.1
CATEGORIES=    	audio
HOMEPAGE=	http://www.xiph.org/ogg/vorbis/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://www.vorbis.com/files/1.0.1/unix/

MODULES=	devel/gettext
LIB_DEPENDS=	ao.3::audio/libao \
		curl.2::net/curl \
		FLAC.5,OggFLAC::audio/flac \
		speex.2::audio/speex \
		vorbis.2,vorbisenc.2,vorbisfile.3::audio/libvorbis

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		PTHREAD_CFLAGS="-pthread" PTHREAD_LIBS="-pthread"
SEPARATE_BUILD=	simple

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/vorbis-tools
	${INSTALL_DATA} ${WRKSRC}/ogg123/ogg123rc-example \
		${PREFIX}/share/examples/vorbis-tools/ogg123rc

.include <bsd.port.mk>
