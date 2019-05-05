# $OpenBSD: Makefile,v 1.53 2019/05/05 04:31:22 bentley Exp $

COMMENT=	play, encode, and manage Ogg Vorbis files

DISTNAME=	vorbis-tools-1.4.0
REVISION=	5
CATEGORIES=    	audio
HOMEPAGE=	https://www.xiph.org/vorbis/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB+= FLAC ao c crypto curl iconv intl m nghttp2 ogg pthread speex
WANTLIB+= ssl vorbis vorbisenc vorbisfile z

MASTER_SITES=	https://downloads.xiph.org/releases/vorbis/

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
