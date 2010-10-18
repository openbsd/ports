# $OpenBSD: Makefile,v 1.40 2010/10/18 22:43:10 sthen Exp $

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

WANTLIB += c crypto idn m ogg pthread ssl z
WANTLIB += ao curl5 FLAC speex vorbis vorbisenc vorbisfile

MASTER_SITES=	http://downloads.xiph.org/releases/vorbis/

MODULES=	devel/gettext
LIB_DEPENDS=	::audio/libao \
		::net/curl \
		::audio/flac \
		::audio/speex \
		::audio/libvorbis

USE_GROFF=	Yes
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
