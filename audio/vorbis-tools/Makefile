# $OpenBSD: Makefile,v 1.10 2001/10/08 14:57:55 naddy Exp $

COMMENT=	"play, encode, and manage Ogg Vorbis files"
DISTNAME=	vorbis-tools-1.0rc2
CATEGORIES=    	audio
NEED_VERSION=	1.457
HOMEPAGE=	http://www.vorbis.com/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}files/rc2/unix/

PATCH_LIST=	${PORTSDIR}/infrastructure/patches/patch-lt1.3.5-ltconfig \
		${PORTSDIR}/infrastructure/patches/patch-lt1.3.5-ltmain_sh

LIB_DEPENDS=	ao.2::audio/libao \
		ogg.2::audio/libogg \
		vorbis.0,vorbisenc.0,vorbisfile.1::audio/libvorbis

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--with-ogg-prefix=${LOCALBASE} \
		--with-vorbis-prefix=${LOCALBASE} \
		--with-ao-prefix=${LOCALBASE}

.include <bsd.port.mk>
