COMMENT =		RPKI "relying party" software

V =			1.6.3
DISTNAME =		fort-$V

CATEGORIES =		net

HOMEPAGE =		https://nicmx.github.io/FORT-validator/index.html

MAINTAINER =		Claudio Jeker <claudio@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

# stdatomic.h
COMPILER =		base-clang ports-gcc
COMPILER_LANGS =	c

SITES =			https://github.com/NICMx/FORT-validator/releases/download/$V/
CONFIGURE_STYLE =	gnu
CONFIGURE_ENV +=	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib"

WANTLIB +=		c crypto execinfo pthread
WANTLIB +=		curl jansson xml2

LIB_DEPENDS =		devel/jansson \
			net/curl \
			textproc/libxml

RUN_DEPENDS =		net/rsync

.include <bsd.port.mk>
