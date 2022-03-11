COMMENT =	terminal Matrix client written in Go

MODGO_MODNAME =	maunium.net/go/gomuks
MODGO_VERSION =	v0.2.4

DISTNAME =	gomuks-${MODGO_VERSION}

CATEGORIES =	net

HOMEPAGE =	https://github.com/tulir/gomuks

# AGPL-3.0
PERMIT_PACKAGE =	yes

COMPILER=base-clang ports-gcc

WANTLIB += ${COMPILER_LIBCXX} c olm

LIB_DEPENDS =		devel/olm

MAKE_ENV +=		CGO_CFLAGS=-I${LOCALBASE}/include \
			CGO_LDFLAGS=-L${LOCALBASE}/lib

MODULES =		lang/go

.include "modules.inc"

.include <bsd.port.mk>
