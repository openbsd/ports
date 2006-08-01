# $OpenBSD: Makefile,v 1.28 2006/08/01 10:50:19 espie Exp $

COMMENT=	"play, encode, and manage Ogg Vorbis files"

DISTNAME=	vorbis-tools-1.1.1
PKGNAME=	${DISTNAME}p0
CATEGORIES=    	audio
HOMEPAGE=	http://www.xiph.org/vorbis/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://downloads.xiph.org/releases/vorbis/

MODULES=	devel/gettext
LIB_DEPENDS=	ao.>=3::audio/libao \
		curl.>=3::net/curl \
		FLAC.>=7,OggFLAC.>=3::audio/flac \
		speex.>=4::audio/speex \
		vorbis.>=4,vorbisenc.>=2,vorbisfile.>=4::audio/libvorbis
WANTLIB=	c crypto m ogg pthread ssl z

USE_LIBTOOL=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--enable-vcut
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		PTHREAD_CFLAGS="-pthread" PTHREAD_LIBS="-pthread"
SEPARATE_BUILD=	simple

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/vorbis-tools
	${INSTALL_DATA} ${WRKSRC}/ogg123/ogg123rc-example \
		${PREFIX}/share/examples/vorbis-tools/ogg123rc

.include <bsd.port.mk>
