COMMENT =	small, embeddable JavaScript engine in C

V =		2020.09.06
DISTNAME =	quickjs-${V:S/./-/g}
PKGNAME =	quickjs-${V}

CATEGORIES =	lang

HOMEPAGE =	https://bellard.org/quickjs/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += c m pthread

MASTER_SITES =	https://bellard.org/quickjs/
EXTRACT_SUFX =	.tar.xz

# Requires stdatomic
COMPILER =	base-clang ports-gcc

USE_GMAKE =	Yes
MAKE_FLAGS =	CC="${CC}"

# Fix "undefined reference to `__atomic_store_8'"
.if ${MACHINE_ARCH:Mhppa}
WANTLIB +=	atomic
MAKE_FLAGS +=	LDFLAGS="${LDFLAGS} -latomic"
.endif

.include <bsd.port.mk>
