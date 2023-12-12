COMMENT =	use cabal solver to build standalone installation

# https://github.com/phadej/cabal-extras/issues/37
V =		0.1.20230523
GH_ACCOUNT = 	phadej
GH_COMMIT =	e22c5845bafb600d9eed8bce6e3d6d0ca982872b
GH_PROJECT =	cabal-extras

# Overrides cabal.port.mk which would otherwise preempt bsd.port.mk
DISTNAME =	${GH_PROJECT}-${V}
DISTFILES =	${GH_DISTFILE}
DISTFILES.tuto= gentle-introduction-2023.4.tar.gz
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
MODCABAL_BUILD_ARGS =	--allow-newer

post-patch:
	# https://github.com/haskell-hvr/paths/pull/16
	cd ${WRKDIR}/paths-0.2.0.0  && perl -i -pne 's/LANGUAGE Safe/LANGUAGE Trustworthy/' $$(find . -name \*.hs)

# After the workaround in https://github.com/phadej/cabal-extras/issues/83,
# the manifest produced by:
#
# $ cd cabal-extras/cabal-bundler
# $ cabal v2-run -w /usr/local/bin/ghc exe:cabal-bundler -- \
#      cabal-bundler --openbsd --executable cabal-bundler -p ../dist-newstyle/cache/plan.json
#
# N.B. when regenerating make sure to remove gentle-introduction.
MODCABAL_MANIFEST	= \
	Cabal	3.10.2.1	0	\
	Cabal-syntax	3.10.2.0	0	\
	Glob	0.10.2	3	\
	OneTuple	0.4.1.1	1	\
	QuickCheck	2.14.3	0	\
	StateVar	1.2.2	0	\
	aeson	2.2.1.0	1	\
	ansi-terminal	1.0	0	\
	ansi-terminal-types	0.11.5	1	\
	assoc	1.1	1	\
	async	2.2.4	4	\
	base-compat	0.13.1	0	\
	base-orphans	0.9.1	0	\
	base16-bytestring	1.0.2.0	1	\
	bifunctors	5.6.1	2	\
	binary-instances	1.0.4	3	\
	binary-orphans	1.0.4.1	3	\
	cabal-install-parsers	0.6.1	0	\
	cabal-plan	0.7.3.0	2	\
	case-insensitive	1.2.1.0	0	\
	cborg	0.2.9.0	0	\
	clock	0.8.4	0	\
	colour	2.3.6	0	\
	comonad	5.0.8	2	\
	contravariant	1.5.5	0	\
	cryptohash-sha256	0.11.102.1	3	\
	data-array-byte	0.1.0.1	2	\
	data-fix	0.3.2	5	\
	distributive	0.6.2.1	1	\
	dlist	1.0	1	\
	edit-distance	0.2.2.1	1	\
	foldable1-classes-compat	0.1	4	\
	generically	0.1.1	2	\
	half	0.3.1	0	\
	hashable	1.4.3.0	1	\
	hsc2hs	0.68.10	1	\
	indexed-profunctors	0.1.1.1	0	\
	indexed-traversable	0.1.3	0	\
	indexed-traversable-instances	0.1.1.2	2	\
	integer-conversion	0.1.0.1	1	\
	integer-logarithms	1.0.3.1	5	\
	lattices	2.2	1	\
	lukko	0.1.1.3	5	\
	network-uri	2.6.4.2	1	\
	optics-core	0.4.1.1	0	\
	optics-extra	0.4.2.1	1	\
	optparse-applicative	0.18.1.0	0	\
	paths	0.2.0.0	4	\
	prettyprinter	1.7.1	0	\
	prettyprinter-ansi-terminal	1.1.3	0	\
	primitive	0.9.0.0	0	\
	random	1.2.1.1	1	\
	scientific	0.3.7.0	7	\
	semialign	1.3	1	\
	semigroupoids	6.0.0.1	1	\
	semigroups	0.20	0	\
	serialise	0.2.6.0	3	\
	some	1.0.6	0	\
	sop-core	0.5.0.2	3	\
	splitmix	0.1.0.5	0	\
	strict	0.5	1	\
	tagged	0.8.8	0	\
	tar	0.5.1.1	9	\
	temporary	1.3	0	\
	text-binary	0.2.1.1	0	\
	text-iso8601	0.1	1	\
	text-short	0.1.5	3	\
	th-abstraction	0.6.0.0	1	\
	th-compat	0.1.4	3	\
	these	1.2	1	\
	time-compat	1.9.6.1	6	\
	topograph	1.0.0.2	1	\
	transformers-compat	0.7.2	0	\
	universe-base	1.1.3.1	1	\
	universe-reverse-instances	1.1.1	4	\
	unliftio-core	0.2.1.0	3	\
	unordered-containers	0.2.19.1	3	\
	uuid-types	1.0.5.1	0	\
	vector	0.13.1.0	0	\
	vector-binary-instances	0.2.5.2	5	\
	vector-stream	0.1.0.0	3	\
	witherable	0.4.2	4	\
	zinza	0.2	6	\

.include <bsd.port.mk>
