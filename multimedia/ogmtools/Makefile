# $OpenBSD: Makefile,v 1.10 2017/07/23 09:26:28 espie Exp $

COMMENT=		ogg mux/demuxer
DISTNAME=		ogmtools-1.5
REVISION =		0
EXTRACT_SUFX=		.tar.bz2
CATEGORIES=		multimedia
MASTER_SITES=		${HOMEPAGE}

HOMEPAGE=		http://www.bunkus.org/videotools/ogmtools/

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c m ${COMPILER_LIBCXX} ogg dvdread vorbis vorbisenc

USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--with-dvdread-includes=${LOCALBASE} \
			--with-dvdread-libs=${LOCALBASE}

LIB_DEPENDS=		devel/libdvdread \
			audio/libvorbis

.include <bsd.port.mk>
