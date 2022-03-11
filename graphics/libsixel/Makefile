COMMENT =	encoder/decoder implementation for DEC SIXEL graphics

V =		1.8.6
DISTNAME =	libsixel-$V
REVISION =	0

SHARED_LIBS +=	sixel	1.0	# 1.6

CATEGORIES =	graphics

HOMEPAGE =	https://github.com/saitoha/libsixel

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB +=	c jpeg m png z

MASTER_SITES =	https://github.com/saitoha/libsixel/releases/download/v$V/

LIB_DEPENDS =	graphics/jpeg \
		graphics/png

CONFIGURE_STYLE = gnu

CONFIGURE_ARGS += --disable-python \
		  --without-libcurl

# Requires Python
NO_TEST =	Yes

WRKDIST =	${WRKDIR}/sixel-$V

.include <bsd.port.mk>
