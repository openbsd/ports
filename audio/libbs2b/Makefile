# $OpenBSD: Makefile,v 1.8 2019/07/12 20:43:34 sthen Exp $

COMMENT=	Bauer stereophonic-to-binaural DSP
REVISION=	3

DISTNAME=	libbs2b-3.1.0

SHARED_LIBS +=	bs2b                      0.0 # 0.0

CATEGORIES=	audio

HOMEPAGE=	http://bs2b.sourceforge.net/

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB += FLAC c m ogg sndfile ${COMPILER_LIBCXX} vorbis vorbisenc

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=bs2b/}

LIB_DEPENDS=	audio/libsndfile
SEPARATE_BUILD=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
