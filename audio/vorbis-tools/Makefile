# $OpenBSD: Makefile,v 1.6 2001/06/30 13:18:10 naddy Exp $

COMMENT=	"play, encode, and manage Ogg Vorbis files"
DISTNAME=	vorbis-tools-1.0rc1
CATEGORIES=    	audio
NEED_VERSION=	1.363
HOMEPAGE=	http://www.vorbis.com

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}/files/rc1/unix/

LIB_DEPENDS=	ao.1::audio/libao \
		ogg.2::audio/libogg \
		vorbis.0::audio/libvorbis

CONFIGURE_STYLE= autoconf
CONFIGURE_ARGS=	--with-ogg-prefix=${LOCALBASE} \
		--with-vorbis-prefix=${LOCALBASE} \
		--with-vorbis-dir=${LOCALBASE}/lib \
		--with-ao-prefix=${LOCALBASE}

post-patch:
	@cd ${WRKSRC} && touch acinclude.m4 aclocal.m4 configure.in

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/vorbis-tools
	${INSTALL_DATA} ${WRKSRC}/ogg123/ogg123rc-example \
		${PREFIX}/share/examples/vorbis-tools/dot.ogg123rc

.include <bsd.port.mk>
