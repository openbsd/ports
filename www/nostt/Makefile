COMMENT =	command-line NOS Teletekst reader

GH_ACCOUNT =	sjmulder
GH_PROJECT =	nostt
GH_TAGNAME =	1.3

CATEGORIES =	www

MAINTAINER =	Tim van der Molen <tim@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

# uses pledge()
WANTLIB =	c curl json-c

LIB_DEPENDS =	devel/json-c \
		net/curl

MAKE_ENV =	CC="${CC}" \
		CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
FAKE_FLAGS =	DESTDIR=

NO_TEST =	Yes

.include <bsd.port.mk>
