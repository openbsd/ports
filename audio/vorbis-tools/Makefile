# $OpenBSD: Makefile,v 1.2 2001/03/20 15:25:33 naddy Exp $

DISTNAME=	vorbis-tools-1.0beta4
CATEGORIES=    	audio
NEED_VERSION=	1.359
HOMEPAGE=	http://www.vorbis.com

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}/files/beta4/unix/

LIB_DEPENDS=	ao.1::audio/libao \
		ogg.1::audio/libogg \
		vorbis.0::audio/libvorbis

CONFIGURE_STYLE= autoconf
CONFIGURE_ARGS=	--with-ogg-prefix=${LOCALBASE} \
		--with-vorbis-prefix=${LOCALBASE} \
		--with-vorbis-dir=${LOCALBASE}/lib \
		--with-ao-prefix=${LOCALBASE}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/vorbis-tools
	${INSTALL_DATA} ${WRKSRC}/ogg123/ogg123rc-example \
		${PREFIX}/share/examples/vorbis-tools/dot.ogg123rc

.include <bsd.port.mk>
