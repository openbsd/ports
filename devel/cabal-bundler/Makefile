COMMENT =	use cabal solver to build standalone installation

# https://github.com/phadej/cabal-extras/issues/37
V =		0.1.20230304
GH_ACCOUNT = 	phadej
GH_COMMIT =	0cb96d2cf6c390555937fbb57fbe42b299aeb596
GH_PROJECT =	cabal-extras

# Overrides cabal.port.mk which would otherwise preempt bsd.port.mk
DISTNAME =	${GH_PROJECT}-${V}
DISTFILES =	${GH_DISTFILE}
DISTFILES.tuto= gentle-introduction-2022.5.tar.gz
PKGNAME =	${MODCABAL_EXECUTABLES}-${V}
SITES =		${SITES_GITHUB}

SITES.tuto =	https://oleg.fi/

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

# After the workaround in https://github.com/phadej/cabal-extras/issues/83,
# the manifest produced by:
#
# $ cd cabal-extras/cabal-bundler
# $ cabal v2-run -w /usr/local/bin/ghc exe:cabal-bundler -- \
#      cabal-bundler --openbsd --executable cabal-bundler -p ../dist-newstyle/cache/plan.json
#
# N.B. when regenerating make sure to remove gentle-introduction.
MODCABAL_MANIFEST	= \
	Cabal	3.8.1.0	2	\
	Cabal-syntax	3.8.1.0	3	\
	Glob	0.10.2	3	\
	OneTuple	0.4.1.1	0	\
	QuickCheck	2.14.2	0	\
	StateVar	1.2.2	0	\
	aeson	2.1.2.1	1	\
	ansi-terminal	0.11.4	0	\
	ansi-wl-pprint	0.6.9	3	\
	assoc	1.0.2	3	\
	async	2.2.4	2	\
	attoparsec	0.14.4	3	\
	base-compat	0.12.2	0	\
	base-compat-batteries	0.12.2	0	\
	base-orphans	0.8.7	0	\
	base16-bytestring	1.0.2.0	0	\
	bifunctors	5.5.15	0	\
	binary-instances	1.0.4	0	\
	binary-orphans	1.0.4.1	0	\
	cabal-install-parsers	0.6	0	\
	cabal-plan	0.7.2.3	0	\
	case-insensitive	1.2.1.0	0	\
	cborg	0.2.8.0	2	\
	clock	0.8.3	0	\
	colour	2.3.6	0	\
	comonad	5.0.8	1	\
	contravariant	1.5.5	0	\
	cryptohash-sha256	0.11.102.1	1	\
	data-array-byte	0.1.0.1	1	\
	data-fix	0.3.2	3	\
	distributive	0.6.2.1	1	\
	dlist	1.0	0	\
	edit-distance	0.2.2.1	1	\
	generically	0.1	0	\
	half	0.3.1	0	\
	hashable	1.4.2.0	0	\
	hsc2hs	0.68.9	0	\
	indexed-profunctors	0.1.1	0	\
	indexed-traversable	0.1.2	2	\
	indexed-traversable-instances	0.1.1.2	0	\
	integer-logarithms	1.0.3.1	4	\
	lattices	2.0.3	4	\
	lukko	0.1.1.3	3	\
	network-uri	2.6.4.2	0	\
	optics-core	0.4.1	1	\
	optics-extra	0.4.2.1	1	\
	optparse-applicative	0.17.0.0	0	\
	paths	0.2.0.0	4	\
	primitive	0.7.4.0	1	\
	random	1.2.1.1	0	\
	scientific	0.3.7.0	4	\
	semialign	1.2.0.1	3	\
	semigroupoids	5.3.7	1	\
	semigroups	0.20	0	\
	serialise	0.2.6.0	2	\
	some	1.0.4.1	0	\
	sop-core	0.5.0.2	1	\
	splitmix	0.1.0.4	2	\
	strict	0.4.0.1	4	\
	tagged	0.8.7	0	\
	tar	0.5.1.1	5	\
	temporary	1.3	0	\
	text-binary	0.2.1.1	0	\
	text-short	0.1.5	1	\
	th-abstraction	0.5.0.0	0	\
	th-compat	0.1.4	1	\
	these	1.1.1.1	6	\
	time-compat	1.9.6.1	4	\
	topograph	1.0.0.2	0	\
	transformers-compat	0.7.2	0	\
	universe-base	1.1.3	3	\
	universe-reverse-instances	1.1.1	2	\
	unliftio-core	0.2.1.0	1	\
	unordered-containers	0.2.19.1	1	\
	uuid-types	1.0.5	3	\
	vector	0.13.0.0	3	\
	vector-binary-instances	0.2.5.2	3	\
	vector-stream	0.1.0.0	2	\
	witherable	0.4.2	3	\
	zinza	0.2	5	\

.include <bsd.port.mk>
