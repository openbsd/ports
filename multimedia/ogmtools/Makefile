COMMENT=		ogg mux/demuxer
DISTNAME=		ogmtools-1.5
REVISION =		3
EXTRACT_SUFX=		.tar.bz2
CATEGORIES=		multimedia
SITES=			${HOMEPAGE}

HOMEPAGE=		https://www.bunkus.org/videotools/ogmtools/

# GPL
PERMIT_PACKAGE=	Yes

WANTLIB += c m ${COMPILER_LIBCXX} ogg dvdread vorbis vorbisenc

COMPILER =		base-clang ports-gcc base-gcc

USE_GMAKE=		Yes
CONFIGURE_STYLE=	autoreconf
AUTOCONF_VERSION=	2.59
AUTOMAKE_VERSION=	1.8
CONFIGURE_ARGS=		--with-dvdread-includes=${LOCALBASE} \
			--with-dvdread-libs=${LOCALBASE}

LIB_DEPENDS=		devel/libdvdread \
			audio/libvorbis

CXXFLAGS+=		-std=c++14

.include <bsd.port.mk>
