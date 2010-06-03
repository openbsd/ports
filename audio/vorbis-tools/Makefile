# $OpenBSD: Makefile,v 1.37 2010/06/03 15:50:28 naddy Exp $

COMMENT=	play, encode, and manage Ogg Vorbis files

DISTNAME=	vorbis-tools-1.4.0
CATEGORIES=    	audio
HOMEPAGE=	http://www.vorbis.com/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://downloads.xiph.org/releases/vorbis/

MODULES=	devel/gettext
LIB_DEPENDS=	ao.>=4::audio/libao \
		curl.>=15::net/curl \
		FLAC.>=9::audio/flac \
		speex.>=8::audio/speex \
		vorbis.>=8,vorbisenc.>=3,vorbisfile.>=6::audio/libvorbis
WANTLIB=	c crypto idn m ogg pthread ssl z

USE_LIBTOOL=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--without-kate
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		PTHREAD_CFLAGS="-pthread" PTHREAD_LIBS="-pthread"
SEPARATE_BUILD=	simple

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/vorbis-tools
	${INSTALL_DATA} ${WRKSRC}/ogg123/ogg123rc-example \
		${PREFIX}/share/examples/vorbis-tools/ogg123rc

.include <bsd.port.mk>
