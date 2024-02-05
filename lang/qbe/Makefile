# Probably builds on all archs, but only generates assembly for these three
ONLY_FOR_ARCHS =	amd64 arm64 riscv64

COMMENT =	small, quick compiler backend
DISTNAME =	qbe-1.1pl20230925
CATEGORIES =	lang devel
REVISION =	0

HOMEPAGE =	https://c9x.me/compile/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += c

SITES =	https://github.com/ibara/ports/releases/download/v1.0/

DEBUG_PACKAGES =	${BUILD_PACKAGES}

ALL_TARGET =	qbe
MAKE_FLAGS =	CC="${CC}" CFLAGS="${CFLAGS} -std=c99"

TEST_TARGET =	check

# Install documentation
post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/qbe
	${INSTALL_DATA} ${WRKSRC}/doc/* ${PREFIX}/share/doc/qbe

.include <bsd.port.mk>
