# $OpenBSD: Makefile,v 1.4 2004/01/30 17:04:48 lebel Exp $

COMMENT=		"add tags to Ogg Vorbis files to adjust the volume"

DISTNAME=		vorbisgain-0.34
CATEGORIES=		audio
HOMEPAGE=		http://sjeng.org/vorbisgain.html


# (L)GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://sjeng.org/ftp/vorbis/
EXTRACT_SUFX=		.zip

LIB_DEPENDS=		vorbis.2,vorbisfile.3::audio/libvorbis

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--enable-recursive
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

post-extract:
	@chmod 755 ${WRKDIST}/configure

.include <bsd.port.mk>
