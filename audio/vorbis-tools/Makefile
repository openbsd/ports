# $OpenBSD: Makefile,v 1.16 2002/07/20 12:10:21 naddy Exp $

COMMENT=	"play, encode, and manage Ogg Vorbis files"

DISTNAME=	vorbis-tools-1.0
CATEGORIES=    	audio
HOMEPAGE=	http://www.vorbis.com/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://ftp.linuxpowered.com/pub/Vorbis/unix/ \
		ftp://ftp.wiles.org/pub/mirrors/Vorbis/unix/ \
		http://xiph.stratius.com/vorbis/unix/ \
		http://www.oddsock.org/vorbis/unix/ \
		http://www.casterclub.com/vorbis/unix/ \
		http://www.math.utoledo.edu/~chaese/Vorbis/unix/

LIB_DEPENDS=	ao.3::audio/libao \
		curl.2::net/curl \
		iconv.2::converters/libiconv \
		vorbis.2,vorbisenc.2,vorbisfile.3::audio/libvorbis

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/vorbis-tools
	${INSTALL_DATA} ${WRKSRC}/ogg123/ogg123rc-example \
		${PREFIX}/share/examples/vorbis-tools/ogg123rc

.include <bsd.port.mk>
