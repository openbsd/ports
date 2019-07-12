# $OpenBSD: Makefile,v 1.7 2019/07/12 20:43:32 sthen Exp $

# Warning: CELT is experimental software. Neither the API/ABI, nor
# the bit-stream are stable. Compatibility between different releases
# (even minor ones) is not preserved.

COMMENT =	experimental ultra-low delay audio codec (0.7 API)

V =		0.7.1
DISTNAME =	celt-$V
PKGNAME =	celt07-$V
CATEGORIES =   	audio
REVISION =	0

HOMEPAGE =	http://www.celt-codec.org/

SHARED_LIBS +=  celt07 0.0	# 0.0

# BSD
PERMIT_PACKAGE =	Yes

MASTER_SITES =		https://downloads.xiph.org/releases/celt/

WANTLIB =		c m ogg sndio

LIB_DEPENDS =		audio/libogg


CONFIGURE_STYLE =	gnu

CONFIGURE_ARGS =	--program-suffix=07 \
			--with-ogg=${LOCALBASE}

CONFIGURE_ENV =		CPPFLAGS="-DUSE_SNDIO"
.if "${MACHINE}" == "hppa"
# Building with -Os or -finline-functions to avoid
# celt.c:1540: internal compiler error: in delete_output_reload, at reload1.c:7926
CONFIGURE_ENV +=	CFLAGS="-O2 -finline-functions"
.endif

.include <bsd.port.mk>
