COMMENT =	reversible columnar pre-pass + zstd archiver

V =		0.1.2
DISTNAME =	mkz-${V}
CATEGORIES =	archivers

HOMEPAGE =	https://github.com/gitspoked/mkz

MAINTAINER =	Matt Klein <mk@ntele.net>

# MIT OR Apache-2.0
PERMIT_PACKAGE =	Yes

WANTLIB =	c zstd

SITES =		https://github.com/gitspoked/mkz/releases/download/v${V}/

FIX_EXTRACT_PERMISSIONS = Yes

LIB_DEPENDS =	archivers/zstd

MAKE_FLAGS =	CFLAGS="${CFLAGS} -std=c11" \
		CPPFLAGS=-I${LOCALBASE}/include \
		ZSTD="-L${LOCALBASE}/lib -lzstd"
FAKE_FLAGS =	DESTDIR=
TEST_TARGET =	check

.include <bsd.port.mk>
