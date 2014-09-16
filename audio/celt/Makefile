# $OpenBSD: Makefile,v 1.14 2014/09/16 19:56:09 miod Exp $

# Warning: CELT is experimental software. Neither the API/ABI, nor
# the bit-stream are stable. Compatibility between different releases
# (even minor ones) is not preserved.

# invalid use of `restrict'
NOT_FOR_ARCHS=	${GCC3_ARCHS}

COMMENT =	experimental ultra-low delay audio codec

# XXX audio/mumble (at least as of 1.2.4) requires *exactly* 0.11.1
DISTNAME =	celt-0.11.1

EPOCH =		1

CATEGORIES =	audio

HOMEPAGE =	http://www.celt-codec.org/

SHARED_LIBS +=	celt0	2.0	# 2.0

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	http://downloads.xiph.org/releases/celt/

WANTLIB =		c m ogg>=5 sndio

LIB_DEPENDS =		audio/libogg


CONFIGURE_STYLE =	gnu

CONFIGURE_ARGS =	${CONFIGURE_SHARED} \
			--enable-assertions \
			--enable-custom-modes \
			--with-ogg=${LOCALBASE}

CONFIGURE_ENV =		CPPFLAGS="-DUSE_SNDIO"

SEPARATE_BUILD =	Yes

.include <bsd.port.mk>
