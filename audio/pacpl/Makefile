# $OpenBSD: Makefile,v 1.20 2020/07/01 01:28:18 cwen Exp $

PKG_ARCH=		*

COMMENT=		PAC (Perl Audio Converter)

DISTNAME=		pacpl-4.0.5
REVISION=		1
CATEGORIES=		audio converters perl5

HOMEPAGE=		http://pacpl.sourceforge.net/

# GPLv3
PERMIT_PACKAGE=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=pacpl/}

NO_BUILD=		Yes
NO_TEST=		Yes

RUN_DEPENDS=		audio/lame \
			audio/musepack \
			audio/sox \
			audio/speex \
			audio/vorbis-tools \
			audio/p5-Audio-FLAC-Header \
			audio/p5-Audio-Musepack \
			audio/p5-Audio-WMA \
			audio/p5-CDDB_get \
			audio/p5-MP3-ID3v1Tag \
			audio/p5-MP3-Tag \
			audio/p5-MP4-Info \
			audio/p5-Ogg-Vorbis-Header \
			audio/wavpack \
			devel/p5-Switch \
			graphics/ffmpeg \
			x11/mplayer

BUILD_DEPENDS=		${RUN_DEPENDS}

USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--with-konq \
			--with-amarok
CONFIGURE_ENV=		KDEDIR="${LOCALBASE}" \
			AMAROK="yes" \
			KONQ="yes"

pre-configure:
	${SUBST_CMD} ${WRKSRC}/pacpl ${WRKSRC}/Makefile.in

.include <bsd.port.mk>
