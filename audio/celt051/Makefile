# $OpenBSD: Makefile,v 1.5 2013/06/04 13:31:49 dcoppa Exp $

# Warning: CELT is experimental software. Neither the API/ABI, nor
# the bit-stream are stable. Compatibility between different releases
# (even minor ones) is not preserved.

COMMENT =	experimental ultra-low delay audio codec (051 API)

V =		0.5.1.1
DISTNAME =	celt-$V
PKGNAME =	celt051-$V
REVISION =	1
CATEGORIES =   	audio

HOMEPAGE =	http://www.celt-codec.org/

SHARED_LIBS +=  celt051                   0.0 # 0.0

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://downloads.xiph.org/releases/celt/

WANTLIB =		c m ogg sndio

LIB_DEPENDS =		audio/libogg


CONFIGURE_STYLE =	gnu

CONFIGURE_ARGS =	${CONFIGURE_SHARED} \
			--with-ogg=${LOCALBASE}

CONFIGURE_ENV =		CPPFLAGS="-DUSE_SNDIO"

.include <bsd.port.mk>
