COMMENT =	PEG-based parser generator
CATEGORIES =	devel

GH_ACCOUNT =	fasterthanlime
GH_PROJECT =	greg
GH_TAGNAME =	v0.4.5

MAINTAINER =	Sean Levy <attila@stalphonsos.com>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += c

MAKE_FLAGS =	OFLAGS="${CFLAGS} -DNDEBUG -DYY_MAIN"

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/greg ${PREFIX}/bin/

.include <bsd.port.mk>
