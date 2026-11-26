COMMENT =		compressed number format for multi-dimensional arrays

GH_ACCOUNT =		llnl
GH_PROJECT =		zfp
GH_TAGNAME =		1.0.1
DISTNAME =		zfp-${GH_TAGNAME}

SHARED_LIBS +=		zfp	0.0

CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE =	Yes

WANTLIB +=		m

COMPILER =		base-clang ports-gcc

MODULES =		devel/cmake

CONFIGURE_ENV +=	LDFLAGS="-lm"

.include <bsd.port.mk>
