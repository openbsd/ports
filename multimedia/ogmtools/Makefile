# $OpenBSD: Makefile,v 1.6 2013/03/11 11:35:44 espie Exp $

COMMENT=		ogg mux/demuxer
DISTNAME=		ogmtools-1.5
EXTRACT_SUFX=		.tar.bz2
CATEGORIES=		multimedia
MASTER_SITES=		${HOMEPAGE}

HOMEPAGE=		http://www.bunkus.org/videotools/ogmtools/

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c m stdc++ ogg dvdread vorbis vorbisenc

USE_GMAKE=		Yes
USE_GROFF=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--with-dvdread-includes=${LOCALBASE} \
			--with-dvdread-libs=${LOCALBASE}

LIB_DEPENDS=		devel/libdvdread \
			audio/libvorbis

.include <bsd.port.mk>
