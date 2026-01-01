COMMENT =		OpenBGPD performance test suite

VERSION =		0.0pl20251230
REVISION =		0
DISTNAME =		bgp-perf-${VERSION}

GH_ACCOUNT =		openbgpd-portable
GH_PROJECT =		bgp-perf
GH_COMMIT =		af8c2d92e04c89c12aa032a360f09725b0e407eb

CATEGORIES =		net

# ISC
PERMIT_PACKAGE =	Yes

WANTLIB +=		c m util

MAKE_FLAGS =		BINDIR="${TRUEPREFIX}/bin" \
			MANDIR="${TRUEPREFIX}/man/man"

# -lm needed for fmax on at least i386, sparc64;
# uses llvm.maxnum intrinsic on amd64/aarch64 and maybe RISC-V
MAKE_FLAGS =		LDFLAGS="-lm"

NO_TEST =		Yes

.include <bsd.port.mk>
