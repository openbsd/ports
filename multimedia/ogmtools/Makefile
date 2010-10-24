# $OpenBSD: Makefile,v 1.4 2010/10/24 21:40:39 sthen Exp $

COMMENT=		ogg mux/demuxer
DISTNAME=		ogmtools-1.5
EXTRACT_SUFX=		.tar.bz2
CATEGORIES=		multimedia
MASTER_SITES=		${HOMEPAGE}

HOMEPAGE=		http://www.bunkus.org/videotools/ogmtools/

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

WANTLIB += c m stdc++ ogg dvdread vorbis vorbisenc

USE_GMAKE=		Yes
USE_GROFF=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--with-dvdread-includes=${LOCALBASE} \
			--with-dvdread-libs=${LOCALBASE}

LIB_DEPENDS=		::devel/libdvdread \
			::audio/libvorbis

.include <bsd.port.mk>
