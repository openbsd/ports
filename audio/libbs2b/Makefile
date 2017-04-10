# $OpenBSD: Makefile,v 1.2 2017/04/10 11:45:23 sthen Exp $

COMMENT=	Bauer stereophonic-to-binaural DSP

DISTNAME=	libbs2b-3.1.0

SHARED_LIBS +=	bs2b                      0.0 # 0.0

CATEGORIES=	audio

HOMEPAGE=	http://bs2b.sourceforge.net/

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += FLAC c m ogg sndfile ${LIBCXX} vorbis vorbisenc

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=bs2b/}

LIB_DEPENDS=	audio/libsndfile
SEPARATE_BUILD=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
