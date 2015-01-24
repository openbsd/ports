# $OpenBSD: Makefile,v 1.20 2015/01/24 11:07:57 schwarze Exp $

COMMENT=	integer-only ogg vorbis command-line player
DISTNAME=	vorbis-tools-1.0
PKGNAME=	${DISTNAME:S/vorbis/tremor/}
REVISION=	5
CATEGORIES=    	audio
MASTER_SITES=	http://www.vorbis.com/files/1.0/unix/

HOMEPAGE=	http://www.xiph.org/vorbis/

# GPL
PERMIT_PACKAGE_CDROM=	Yes

USE_GMAKE=	Yes

LIB_DEPENDS=	audio/libao \
		audio/libogg \
		audio/tremor \
		net/curl

MODULES=	devel/gettext

WANTLIB=	ao>=3 c curl>=2 crypto idn ogg>=5 pthread ssl vorbisidec>=1 z

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=--disable-vorbistest
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

pre-configure:
	${SUBST_CMD} ${WRKSRC}/ogg123/cfgfile_options.c

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/ogg123/ogg123 ${PREFIX}/bin/igg123
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/tremor-tools
	${INSTALL_DATA} ${WRKSRC}/ogg123/ogg123rc-example \
		${PREFIX}/share/examples/tremor-tools/igg123rc
	${INSTALL_MAN} ${WRKSRC}/ogg123/ogg123.1 ${PREFIX}/man/man1/igg123.1

.include <bsd.port.mk>
