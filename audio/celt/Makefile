# $OpenBSD: Makefile,v 1.21 2020/04/18 23:53:25 kn Exp $

PORTROACH =	limit:^0\.11\.1

# The CELT codec has been merged into the IETF Opus codec and is now obsolete

# invalid use of `restrict'
NOT_FOR_ARCHS=	${GCC3_ARCHS}

COMMENT =	experimental ultra-low delay audio codec

DISTNAME =	celt-0.11.1
REVISION =	0

EPOCH =		1

CATEGORIES =	audio

HOMEPAGE =	http://www.celt-codec.org/

SHARED_LIBS +=	celt0	2.0	# 2.0

# BSD
PERMIT_PACKAGE =	Yes

MASTER_SITES =	https://downloads.xiph.org/releases/celt/

WANTLIB =		c m ogg>=5 sndio

LIB_DEPENDS =		audio/libogg


CONFIGURE_STYLE =	gnu

CONFIGURE_ARGS =	--enable-assertions \
			--enable-custom-modes \
			--with-ogg=${LOCALBASE}

CONFIGURE_ENV =		CPPFLAGS="-DUSE_SNDIO"

SEPARATE_BUILD =	Yes

.include <bsd.port.mk>
