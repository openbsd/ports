# $OpenBSD: Makefile,v 1.18 2003/06/08 00:10:06 naddy Exp $

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

MASTER_SITES=	http://www.vorbis.com/files/1.0/unix/ \
		ftp://ftp.wiles.org/pub/mirrors/Vorbis/unix/ \
		http://www.casterclub.com/vorbis/unix/ \
		http://www.math.utoledo.edu/~chaese/Vorbis/unix/

MODULES=	gettext
LIB_DEPENDS=	ao.3::audio/libao \
		curl.2::net/curl \
		vorbis.2,vorbisenc.2,vorbisfile.3::audio/libvorbis

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/vorbis-tools
	${INSTALL_DATA} ${WRKSRC}/ogg123/ogg123rc-example \
		${PREFIX}/share/examples/vorbis-tools/ogg123rc

.include <bsd.port.mk>
