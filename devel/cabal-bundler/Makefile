COMMENT =	use cabal solver to build standalone installation

# https://github.com/phadej/cabal-extras/issues/37
V =		0.1.20251226
GH_ACCOUNT = 	blackgnezdo
GH_COMMIT =	3648f389ed6b90b76d0fa69ec9f3a0a4f75fbd04
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
MODCABAL_BUILD_ARGS =	--allow-newer

post-patch:
	# https://github.com/haskell-hvr/paths/pull/16
	cd ${WRKDIR}/paths-0.2.0.0  && perl -i -pne 's/LANGUAGE Safe/LANGUAGE Trustworthy/' $$(find . -name \*.hs)
	cd ${WRKSRC} && tar zxf extras/gentle-introduction-2024.4.1.tar.gz

# After the workaround in https://github.com/phadej/cabal-extras/issues/83,
# the manifest produced by:
#
# $ cd cabal-extras/cabal-bundler
# $ cabal v2-run -w /usr/local/bin/ghc exe:cabal-bundler -- \
#      cabal-bundler --openbsd --executable cabal-bundler -p ../dist-newstyle/cache/plan.json
#
# N.B. when regenerating make sure to remove gentle-introduction.
MODCABAL_MANIFEST	= \
	Cabal	3.12.1.0	0	\
	Cabal-syntax	3.12.1.0	0	\
	Glob	0.10.2	3	\
	OneTuple	0.4.2	1	\
	QuickCheck	2.15.0.1	1	\
	StateVar	1.2.2	0	\
	aeson	2.2.3.0	4	\
	alex	3.5.1.0	0	\
	ansi-terminal	1.1.1	0	\
	ansi-terminal-types	1.1	0	\
	assoc	1.1.1	1	\
	async	2.2.5	3	\
	base-orphans	0.9.2	0	\
	base16-bytestring	1.0.2.0	1	\
	bifunctors	5.6.2	2	\
	binary-instances	1.0.5	1	\
	binary-orphans	1.0.5	1	\
	cabal-install-parsers	0.6.2	0	\
	cabal-plan	0.7.4.0	0	\
	case-insensitive	1.2.1.0	0	\
	cborg	0.2.10.0	3	\
	character-ps	0.1	0	\
	clock	0.8.4	0	\
	colour	2.3.6	0	\
	comonad	5.0.8	2	\
	contravariant	1.5.5	0	\
	cryptohash-sha256	0.11.102.1	6	\
	data-fix	0.3.3	0	\
	distributive	0.6.2.1	1	\
	dlist	1.0	2	\
	edit-distance	0.2.2.1	1	\
	generically	0.1.1	4	\
	half	0.3.1	2	\
	hashable	1.4.7.0	0	\
	hsc2hs	0.68.10	4	\
	indexed-profunctors	0.1.1.1	0	\
	indexed-traversable	0.1.4	1	\
	indexed-traversable-instances	0.1.2	1	\
	integer-conversion	0.1.1	1	\
	integer-logarithms	1.0.3.1	6	\
	lattices	2.2.1	3	\
	lukko	0.1.2	1	\
	network-uri	2.6.4.2	1	\
	optics-core	0.4.1.1	1	\
	optics-extra	0.4.2.1	4	\
	optparse-applicative	0.18.1.0	1	\
	os-string	2.0.6	1	\
	paths	0.2.0.0	0	\
	prettyprinter	1.7.1	0	\
	prettyprinter-ansi-terminal	1.1.3	0	\
	primitive	0.9.0.0	2	\
	random	1.2.1.2	0	\
	scientific	0.3.8.0	2	\
	semialign	1.3.1	2	\
	semigroupoids	6.0.1	2	\
	semigroups	0.20	0	\
	serialise	0.2.6.1	5	\
	some	1.0.6	2	\
	sop-core	0.5.0.2	5	\
	splitmix	0.1.0.5	1	\
	strict	0.5.1	1	\
	tagged	0.8.8	1	\
	tar	0.6.3.0	1	\
	temporary	1.3	0	\
	text-iso8601	0.1.1	2	\
	text-short	0.1.6	3	\
	th-abstraction	0.7.0.0	0	\
	th-compat	0.1.5	2	\
	these	1.2.1	2	\
	time-compat	1.9.7	2	\
	topograph	1.0.1	1	\
	transformers-compat	0.7.2	0	\
	universe-base	1.1.4	1	\
	universe-reverse-instances	1.1.2	1	\
	unliftio-core	0.2.1.0	4	\
	unordered-containers	0.2.20	4	\
	uuid-types	1.0.6	3	\
	vector	0.13.1.0	3	\
	vector-binary-instances	0.2.5.2	5	\
	vector-stream	0.1.0.1	4	\
	witherable	0.5	1	\
	zinza	0.2.1	1	\

.include <bsd.port.mk>
