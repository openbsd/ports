# $OpenBSD: Makefile,v 1.36 2009/07/17 08:20:37 weerd Exp $

COMMENT=	play, encode, and manage Ogg Vorbis files

DISTNAME=	vorbis-tools-1.2.0
PKGNAME=	${DISTNAME}p1
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
LIB_DEPENDS=	ao.>=3::audio/libao \
		curl.>=8::net/curl \
		FLAC.>=9::audio/flac \
		speex.>=6::audio/speex \
		vorbis.>=6,vorbisenc.>=2,vorbisfile.>=5::audio/libvorbis
WANTLIB=	c crypto idn m ogg pthread ssl z

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
