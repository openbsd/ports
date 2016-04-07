# $OpenBSD: Makefile,v 1.51 2016/04/07 16:05:48 naddy Exp $

COMMENT=	play, encode, and manage Ogg Vorbis files

DISTNAME=	vorbis-tools-1.4.0
REVISION=	3
CATEGORIES=    	audio
HOMEPAGE=	http://www.vorbis.com/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://downloads.xiph.org/releases/vorbis/

WANTLIB=	FLAC ao c crypto curl iconv idn intl m nghttp2 ogg \
		pthread speex ssl vorbis vorbisenc vorbisfile z

LIB_DEPENDS=	audio/flac \
		audio/libao \
		audio/libvorbis \
		audio/speex \
		devel/gettext \
		net/curl

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--without-kate
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
SEPARATE_BUILD=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/vorbis-tools
	${INSTALL_DATA} ${WRKSRC}/ogg123/ogg123rc-example \
		${PREFIX}/share/examples/vorbis-tools/ogg123rc

.include <bsd.port.mk>
