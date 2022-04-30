COMMENT =	use cabal solver to build standalone installation

# https://github.com/phadej/cabal-extras/issues/37
V =		0.1.20210825
GH_ACCOUNT = 	phadej
GH_COMMIT =	bb82ebb7fdaa939c27762e10cb4cad49249b553f
GH_PROJECT =	cabal-extras
REVISION =	0

# Overrides cabal.port.mk which would otherwise preempt bsd.port.mk
DISTNAME =	${GH_PROJECT}-${V}
DISTFILES =	${GH_DISTFILE} \
		gentle-introduction-2021.2.tar.gz:1
PKGNAME =	${MODCABAL_EXECUTABLES}-${V}
MASTER_SITES =	${MASTER_SITES_GITHUB}

MASTER_SITES1 =	https://oleg.fi/

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
# Should be removed after https://github.com/phadej/cabal-extras/issues/112
MODCABAL_BUILD_ARGS =	--allow-newer

# After the workaround in https://github.com/phadej/cabal-extras/issues/83,
# the manifest produced by:
#
# $ cd cabal-extras/cabal-bundler
# $ cabal v2-run -w /usr/local/bin/ghc exe:cabal-bundler -- \
#      cabal-bundler --openbsd --executable cabal-bundler -p ../dist-newstyle/cache/plan.json
MODCABAL_MANIFEST	= \
	Glob	0.10.2	3	\
	OneTuple	0.3.1	2	\
	QuickCheck	2.14.2	0	\
	StateVar	1.2.2	0	\
	aeson	2.0.3.0	0	\
	ansi-terminal	0.11.1	0	\
	ansi-wl-pprint	0.6.9	3	\
	assoc	1.0.2	2	\
	async	2.2.4	1	\
	attoparsec	0.14.4	1	\
	base-compat	0.12.1	0	\
	base-compat-batteries	0.12.1	2	\
	base-orphans	0.8.6	0	\
	base16-bytestring	1.0.2.0	0	\
	bifunctors	5.5.11	1	\
	binary-instances	1.0.2	2	\
	binary-orphans	1.0.2	1	\
	cabal-install-parsers	0.4.5	0	\
	cabal-plan	0.7.2.1	1	\
	case-insensitive	1.2.1.0	0	\
	cborg	0.2.6.0	1	\
	clock	0.8.3	0	\
	colour	2.3.6	0	\
	comonad	5.0.8	1	\
	contravariant	1.5.5	0	\
	cryptohash-sha256	0.11.102.1	0	\
	data-fix	0.3.2	2	\
	distributive	0.6.2.1	1	\
	dlist	1.0	0	\
	edit-distance	0.2.2.1	1	\
	gentle-introduction	2021.2	0	\
	half	0.3.1	0	\
	hashable	1.4.0.2	0	\
	hsc2hs	0.68.8	0	\
	indexed-profunctors	0.1.1	0	\
	indexed-traversable	0.1.2	1	\
	indexed-traversable-instances	0.1.1	0	\
	integer-logarithms	1.0.3.1	2	\
	lattices	2.0.3	2	\
	lukko	0.1.1.3	2	\
	network-uri	2.6.4.1	0	\
	optics-core	0.4.1	0	\
	optics-extra	0.4.1	0	\
	optparse-applicative	0.17.0.0	0	\
	paths	0.2.0.0	3	\
	primitive	0.7.3.0	0	\
	random	1.2.1	0	\
	scientific	0.3.7.0	2	\
	semialign	1.2.0.1	1	\
	semigroupoids	5.3.7	0	\
	semigroups	0.20	0	\
	serialise	0.2.4.0	1	\
	some	1.0.3	2	\
	sop-core	0.5.0.2	0	\
	splitmix	0.1.0.4	0	\
	strict	0.4.0.1	4	\
	tagged	0.8.6.1	2	\
	tar	0.5.1.1	4	\
	temporary	1.3	0	\
	text-binary	0.2.1.1	0	\
	text-short	0.1.5	0	\
	th-abstraction	0.4.3.0	0	\
	th-compat	0.1.3	0	\
	these	1.1.1.1	5	\
	time-compat	1.9.6.1	3	\
	topograph	1.0.0.1	3	\
	transformers-compat	0.7.1	1	\
	universe-base	1.1.3	2	\
	universe-reverse-instances	1.1.1	1	\
	unliftio-core	0.2.0.1	2	\
	unordered-containers	0.2.17.0	0	\
	uuid-types	1.0.5	2	\
	vector	0.12.3.1	1	\
	vector-binary-instances	0.2.5.2	1	\
	witherable	0.4.2	2	\
	zinza	0.2	3	\


.include <bsd.port.mk>
