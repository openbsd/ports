# $OpenBSD: Makefile,v 1.19 2019/07/12 20:43:42 sthen Exp $

COMMENT=		add tags to Ogg Vorbis files to adjust the volume

DISTNAME=		vorbisgain-0.36
REVISION=		3
CATEGORIES=		audio
HOMEPAGE=		http://sjeng.org/vorbisgain.html

# (L)GPL
PERMIT_PACKAGE=	Yes

WANTLIB=		c m ogg vorbis>=4 vorbisfile>=4

MASTER_SITES=		http://sjeng.org/ftp/vorbis/
EXTRACT_SUFX=		.zip

LIB_DEPENDS=		audio/libvorbis

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--enable-recursive
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
