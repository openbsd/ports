COMMENT =	use cabal solver to build standalone installation

# https://github.com/phadej/cabal-extras/issues/37
V =		0.1.20260207
GH_ACCOUNT = 	blackgnezdo
GH_COMMIT =	8cf734b8b4486b7f624ce6589faf50ea27092ce8
GH_PROJECT =	cabal-extras

# Overrides cabal.port.mk which would otherwise preempt bsd.port.mk
DISTNAME =	${GH_PROJECT}-${V}
DISTFILES =	${GH_DISTFILE}
PKGNAME =	${MODCABAL_EXECUTABLES}-${V}
SITES =		${SITES_GITHUB}

CATEGORIES =	devel
HOMEPAGE =	https://github.com/phadej/cabal-extras

# GPLv3
PERMIT_PACKAGE = Yes

LIB_DEPENDS =	converters/libiconv \
		devel/gmp \
		devel/libffi

RUN_DEPENDS =	devel/cabal-install

WANTLIB = 	c m pthread util ffi gmp iconv

MODULES =		devel/cabal
MODCABAL_STEM =		${GH_PROJECT}
MODCABAL_VERSION =	${V}
MODCABAL_EXECUTABLES =	cabal-bundler

post-patch:
	cd ${WRKSRC} && tar zxf extras/gentle-introduction-2024.4.1.tar.gz

# After the workaround in https://github.com/phadej/cabal-extras/issues/83,
# the manifest produced by:
#
# $ cd cabal-extras/cabal-bundler
# $ cabal v2-run -w /usr/local/bin/ghc exe:cabal-bundler -- \
#      cabal-bundler --openbsd --executable cabal-bundler -p ../dist-newstyle/cache/plan.json
#
# N.B. when regenerating make sure to remove gentle-introduction.

.include "cabal.inc"

.include <bsd.port.mk>
