# $OpenBSD: Makefile,v 1.1.1.1 2007/01/16 11:15:36 espie Exp $

COMMENT=		"ogg mux/demuxer"
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

USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--with-dvdread-includes=${LOCALBASE} \
			--with-dvdread-libs=${LOCALBASE}

LIB_DEPENDS=		dvdread::devel/libdvdread \
			vorbis,vorbisenc::audio/libvorbis

WANTLIB=		c m stdc++ ogg
.include <bsd.port.mk>
