# $OpenBSD: Makefile,v 1.13 2019/07/12 20:47:57 sthen Exp $

COMMENT=		ogg mux/demuxer
DISTNAME=		ogmtools-1.5
REVISION =		2
EXTRACT_SUFX=		.tar.bz2
CATEGORIES=		multimedia
MASTER_SITES=		${HOMEPAGE}

HOMEPAGE=		http://www.bunkus.org/videotools/ogmtools/

# GPL
PERMIT_PACKAGE=	Yes

WANTLIB += c m ${COMPILER_LIBCXX} ogg dvdread vorbis vorbisenc

COMPILER =		base-clang ports-gcc base-gcc

USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--with-dvdread-includes=${LOCALBASE} \
			--with-dvdread-libs=${LOCALBASE}

LIB_DEPENDS=		devel/libdvdread \
			audio/libvorbis

.include <bsd.port.mk>
