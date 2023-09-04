COMMENT =		command-line interface for the hledger accounting system

CATEGORIES =		productivity

HOMEPAGE =		https://hledger.org

# GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB =		c curses ffi gmp iconv m pthread util

LIB_DEPENDS =		converters/libiconv \
			devel/gmp \
			devel/libffi

# Exception when trying to run compile-time code:
#  ... hledger.info: hGetContents: invalid argument (invalid byte sequence)
MAKE_ENV =	LC_ALL=en_US.UTF-8

MODULES =		devel/cabal
MODCABAL_STEM =		hledger
MODCABAL_VERSION =	1.31

post-install:
	@${INSTALL_MAN} ${WRKSRC}/hledger.1 ${PREFIX}/man/man1

MODCABAL_MANIFEST	= \
	Decimal	0.5.2	0	\
	Diff	0.4.1	0	\
	Glob	0.10.2	3	\
	OneTuple	0.4.1.1	0	\
	Only	0.1	2	\
	QuickCheck	2.14.3	0	\
	StateVar	1.2.2	0	\
	aeson	2.2.0.0	0	\
	aeson-pretty	0.8.10	0	\
	ansi-terminal	1.0	0	\
	ansi-terminal-types	0.11.5	1	\
	assoc	1.1	0	\
	async	2.2.4	3	\
	attoparsec	0.14.4	4	\
	base-compat	0.13.0	0	\
	base-orphans	0.9.0	0	\
	bifunctors	5.6.1	1	\
	bitvec	1.1.5.0	0	\
	blaze-builder	0.4.2.3	0	\
	blaze-html	0.9.1.2	4	\
	blaze-markup	0.8.2.8	5	\
	cabal-doctest	1.0.9	3	\
	call-stack	0.4.0	0	\
	case-insensitive	1.2.1.0	0	\
	cassava	0.5.3.0	4	\
	cassava-megaparsec	2.0.4	1	\
	clock	0.8.4	0	\
	cmdargs	0.10.22	0	\
	colour	2.3.6	0	\
	comonad	5.0.8	1	\
	conduit	1.3.5	0	\
	conduit-extra	1.3.6	0	\
	contravariant	1.5.5	0	\
	control-monad-free	0.6.2	0	\
	csv	0.1.2	0	\
	data-array-byte	0.1.0.1	1	\
	data-default	0.7.1.1	0	\
	data-default-class	0.1.2.0	0	\
	data-default-instances-containers	0.0.1	0	\
	data-default-instances-dlist	0.0.1	0	\
	data-default-instances-old-locale	0.0.1	0	\
	data-fix	0.3.2	4	\
	deferred-folds	0.9.18.3	0	\
	distributive	0.6.2.1	1	\
	dlist	1.0	1	\
	doclayout	0.4.0.1	0	\
	emojis	0.1.3	0	\
	extra	1.7.14	0	\
	file-embed	0.0.15.0	0	\
	foldable1-classes-compat	0.1	3	\
	foldl	1.4.15	0	\
	generically	0.1.1	1	\
	githash	0.1.7.0	0	\
	hashable	1.4.3.0	0	\
	hashtables	1.3.1	0	\
	hledger-lib	1.31	0	\
	hsc2hs	0.68.9	0	\
	html	1.0.1.2	0	\
	indexed-traversable	0.1.2.1	0	\
	indexed-traversable-instances	0.1.1.2	1	\
	integer-conversion	0.1	0	\
	integer-logarithms	1.0.3.1	4	\
	isomorphism-class	0.1.0.9	0	\
	lucid	2.11.20230408	0	\
	math-functions	0.3.4.2	0	\
	megaparsec	9.5.0	0	\
	microlens	0.4.13.1	0	\
	microlens-th	0.4.3.13	0	\
	mmorph	1.2.0	3	\
	mono-traversable	1.0.15.3	0	\
	network	3.1.4.0	1	\
	network-uri	2.6.4.2	0	\
	old-locale	1.0.0.7	2	\
	optparse-applicative	0.18.1.0	0	\
	pager	0.1.1.0	0	\
	parser-combinators	1.3.0	0	\
	pretty-simple	4.1.2.0	0	\
	prettyprinter	1.7.1	0	\
	prettyprinter-ansi-terminal	1.1.3	0	\
	primitive	0.8.0.0	1	\
	profunctors	5.6.2	3	\
	random	1.2.1.1	0	\
	regex-base	0.94.0.2	2	\
	regex-tdfa	1.3.2.2	1	\
	resourcet	1.3.0	0	\
	safe	0.3.19	0	\
	scientific	0.3.7.0	5	\
	semialign	1.3	0	\
	semigroupoids	6.0.0.1	0	\
	shakespeare	2.1.0	0	\
	split	0.2.3.5	0	\
	splitmix	0.1.0.4	2	\
	streaming-commons	0.2.2.6	0	\
	strict	0.5	0	\
	tabular	0.2.2.8	1	\
	tagged	0.8.8	0	\
	tasty	1.4.3	0	\
	tasty-hunit	0.10.0.3	0	\
	temporary	1.3	0	\
	terminal-size	0.3.4	0	\
	text-ansi	0.2.1.1	0	\
	text-builder	0.6.7	0	\
	text-builder-dev	0.3.3.2	0	\
	text-iso8601	0.1	0	\
	text-short	0.1.5	2	\
	th-abstraction	0.5.0.0	0	\
	th-compat	0.1.4	3	\
	th-lift	0.8.4	0	\
	these	1.2	0	\
	time-compat	1.9.6.1	5	\
	timeit	2.0	2	\
	transformers-compat	0.7.2	0	\
	typed-process	0.2.11.0	0	\
	uglymemo	0.1.0.1	0	\
	unliftio-core	0.2.1.0	2	\
	unordered-containers	0.2.19.1	2	\
	utf8-string	1.0.2	0	\
	utility-ht	0.0.17	0	\
	uuid-types	1.0.5	4	\
	vector	0.13.0.0	5	\
	vector-algorithms	0.9.0.1	2	\
	vector-stream	0.1.0.0	3	\
	witherable	0.4.2	4	\
	wizards	1.0.3	2	\
	zlib	0.6.3.0	3	\

.include <bsd.port.mk>
