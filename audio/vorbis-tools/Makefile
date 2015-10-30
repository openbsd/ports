# $OpenBSD: Makefile,v 1.50 2015/10/30 12:47:38 sthen Exp $

COMMENT=	play, encode, and manage Ogg Vorbis files

DISTNAME=	vorbis-tools-1.4.0
REVISION=	2
CATEGORIES=    	audio
HOMEPAGE=	http://www.vorbis.com/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c crypto idn m nghttp2 ogg pthread ssl z
WANTLIB += ao curl FLAC speex vorbis vorbisenc vorbisfile

MASTER_SITES=	http://downloads.xiph.org/releases/vorbis/

MODULES=	devel/gettext
LIB_DEPENDS=	audio/libao \
		net/curl \
		audio/flac \
		audio/speex \
		audio/libvorbis

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
