V =		3.8.3
COMMENT =	convert between markup and document formats
PKGNAME =	pandoc-${V}

CATEGORIES =	converters textproc

HOMEPAGE =	https://pandoc.org

MAINTAINER =	Evan Silberman <evan@jklol.net>

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB =		c ffi gmp iconv m pthread util z

LIB_DEPENDS =		converters/libiconv \
			devel/gmp \
			devel/libffi

# there are tests, but not hooked up
NO_TEST =		Yes

MODULES =		devel/cabal
MODCABAL_FLAGS =	embed_data_files
MODCABAL_STEM =		pandoc-cli
MODCABAL_VERSION =	${V}
MODCABAL_EXECUTABLES =	pandoc

post-install:
	${INSTALL_MAN} ${WRKDIR}/${MODCABAL_STEM}-${V}/man/pandoc.1 ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKDIR}/${MODCABAL_STEM}-${V}/man/pandoc-lua.1 ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKDIR}/${MODCABAL_STEM}-${V}/man/pandoc-server.1 ${PREFIX}/man/man1

# XXX test target is broken
# Error: [Cabal-7107]
# Could not resolve dependencies:
# [__0] trying: random-1.3.1 (user goal)
# [__1] trying: splitmix-0.1.1 (user goal)
# [__2] rejecting: splitmix:*bench (cyclic dependencies; conflict set: random, splitmix)
# [__1] fail (backjumping, conflict set: random, splitmix)
# After searching the rest of the dependency tree exhaustively, these were the \
# goals I've had most trouble fulfilling: random, splitmix
test:
	whoami
	${_PBUILD} cp ${WRKBUILD}/cabal.project.local ${WRKDIR}/${PKGNAME}/cabal.project.local
	cd ${WRKDIR}/${PKGNAME} \
	&& ${_PBUILD} ${_MODCABAL_CABAL} v2-test --offline  \
		-w ${LOCALBASE}/bin/ghc \
		-j${MAKE_JOBS} \
		--flags="${MODCABAL_FLAGS}" ${MODCABAL_BUILD_ARGS}

.include "cabal.inc"

.include <bsd.port.mk>
