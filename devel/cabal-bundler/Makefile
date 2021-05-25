# $OpenBSD: Makefile,v 1.1 2021/05/25 02:54:24 gnezdo Exp $

COMMENT =	use cabal solver to build standalone installation

# https://github.com/phadej/cabal-extras/issues/37
V =		0.1.20210523
GH_ACCOUNT = 	phadej
GH_COMMIT =	43fe572c3b6fe378be965a37a4a0e1c576296eed
GH_PROJECT =	cabal-extras

# Overrides cabal.port.mk which would otherwise preempt bsd.port.mk
DISTNAME =	${GH_PROJECT}-${V}
DISTFILES =	${DISTNAME}-${GH_COMMIT:C/(........).*/\1/}${EXTRACT_SUFX}{${GH_COMMIT}${EXTRACT_SUFX}} \
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

# After the workaround in https://github.com/phadej/cabal-extras/issues/83,
# the manifest produced by:
#
# $ cd cabal-extras/cabal-bundler
# $ cabal v2-run -w /usr/local/bin/ghc exe:cabal-bundler -- \
#      cabal-bundler --openbsd --executable cabal-bundler -p ../dist-newstyle/cache/plan.json
MODCABAL_MANIFEST =	\
	Cabal	3.4.0.0	0	\
	Glob	0.10.1	0	\
	QuickCheck	2.14.2	0	\
	StateVar	1.2.1	0	\
	aeson	1.5.6.0	0	\
	ansi-terminal	0.11	0	\
	ansi-wl-pprint	0.6.9	2	\
	assoc	1.0.2	1	\
	async	2.2.3	0	\
	attoparsec	0.13.2.5	1	\
	base-compat	0.11.2	0	\
	base-compat-batteries	0.11.2	0	\
	base-orphans	0.8.4	0	\
	base16-bytestring	1.0.1.0	0	\
	bifunctors	5.5.10	0	\
	binary-instances	1.0.1	1	\
	binary-orphans	1.0.1	5	\
	cabal-install-parsers	0.4.1	1	\
	cabal-plan	0.7.2.0	0	\
	case-insensitive	1.2.1.0	0	\
	cborg	0.2.4.0	0	\
	clock	0.8.2	0	\
	colour	2.3.5	0	\
	comonad	5.0.8	0	\
	contravariant	1.5.3	0	\
	cryptohash-sha256	0.11.102.0	0	\
	data-fix	0.3.1	0	\
	distributive	0.6.2.1	0	\
	dlist	1.0	0	\
	edit-distance	0.2.2.1	1	\
	half	0.3.1	0	\
	hashable	1.3.1.0	0	\
	hsc2hs	0.68.7	1	\
	indexed-profunctors	0.1	0	\
	indexed-traversable	0.1.1	0	\
	indexed-traversable-instances	0.1	0	\
	integer-logarithms	1.0.3.1	0	\
	lattices	2.0.2	3	\
	lukko	0.1.1.3	1	\
	network-uri	2.6.4.1	0	\
	optics-core	0.3.0.1	0	\
	optics-extra	0.3	2	\
	optparse-applicative	0.16.1.0	0	\
	paths	0.2.0.0	3	\
	primitive	0.7.1.0	2	\
	random	1.2.0	5	\
	scientific	0.3.6.2	0	\
	semialign	1.2	0	\
	semigroupoids	5.3.5	0	\
	semigroups	0.19.1	0	\
	serialise	0.2.3.0	1	\
	some	1.0.2	0	\
	sop-core	0.5.0.1	1	\
	splitmix	0.1.0.3	0	\
	strict	0.4.0.1	0	\
	tagged	0.8.6.1	0	\
	tar	0.5.1.1	3	\
	temporary	1.3	0	\
	text-binary	0.2.1.1	0	\
	th-abstraction	0.4.2.0	0	\
	th-compat	0.1.1	0	\
	these	1.1.1.1	1	\
	time-compat	1.9.5	1	\
	topograph	1.0.0.1	1	\
	transformers-compat	0.6.6	0	\
	universe-base	1.1.2	0	\
	universe-reverse-instances	1.1.1	0	\
	unliftio-core	0.2.0.1	1	\
	unordered-containers	0.2.13.0	0	\
	uuid-types	1.0.4	0	\
	vector	0.12.2.0	0	\
	vector-binary-instances	0.2.5.1	2	\
	witherable	0.4.1	0	\
	zinza	0.2	2	\

.include <bsd.port.mk>
