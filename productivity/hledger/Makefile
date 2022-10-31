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
MODCABAL_VERSION =	1.27.1

post-install:
	@${INSTALL_MAN} ${WRKSRC}/hledger.1 ${PREFIX}/man/man1

MODCABAL_MANIFEST	= \
	Decimal	0.5.2	0	\
	Diff	0.4.1	0	\
	Glob	0.10.2	3	\
	OneTuple	0.3.1	3	\
	Only	0.1	1	\
	QuickCheck	2.14.2	0	\
	StateVar	1.2.2	0	\
	aeson	2.1.1.0	0	\
	aeson-pretty	0.8.9	2	\
	ansi-terminal	0.11.3	0	\
	ansi-wl-pprint	0.6.9	3	\
	assoc	1.0.2	3	\
	attoparsec	0.14.4	2	\
	base-compat	0.12.2	0	\
	base-compat-batteries	0.12.2	0	\
	base-orphans	0.8.7	0	\
	bifunctors	5.5.13	0	\
	blaze-builder	0.4.2.2	1	\
	blaze-html	0.9.1.2	2	\
	blaze-markup	0.8.2.8	3	\
	breakpoint	0.1.0.0	0	\
	cabal-doctest	1.0.9	2	\
	call-stack	0.4.0	0	\
	case-insensitive	1.2.1.0	0	\
	cassava	0.5.3.0	0	\
	cassava-megaparsec	2.0.4	0	\
	clock	0.8.3	0	\
	cmdargs	0.10.21	0	\
	colour	2.3.6	0	\
	comonad	5.0.8	1	\
	contravariant	1.5.5	0	\
	control-monad-free	0.6.2	0	\
	csv	0.1.2	0	\
	data-default	0.7.1.1	0	\
	data-default-class	0.1.2.0	0	\
	data-default-instances-containers	0.0.1	0	\
	data-default-instances-dlist	0.0.1	0	\
	data-default-instances-old-locale	0.0.1	0	\
	data-fix	0.3.2	3	\
	distributive	0.6.2.1	1	\
	dlist	1.0	0	\
	doclayout	0.4	1	\
	emojis	0.1.2	0	\
	extra	1.7.12	0	\
	file-embed	0.0.15.0	0	\
	generically	0.1	0	\
	githash	0.1.6.2	0	\
	hashable	1.4.1.0	0	\
	hashtables	1.3	0	\
	hledger-lib	1.27.1	0	\
	html	1.0.1.2	0	\
	indexed-traversable	0.1.2	2	\
	indexed-traversable-instances	0.1.1.1	0	\
	integer-logarithms	1.0.3.1	3	\
	lucid	2.11.1	0	\
	math-functions	0.3.4.2	0	\
	megaparsec	9.2.2	0	\
	microlens	0.4.13.0	0	\
	microlens-th	0.4.3.10	1	\
	mmorph	1.2.0	3	\
	old-locale	1.0.0.7	2	\
	optparse-applicative	0.17.0.0	0	\
	parser-combinators	1.3.0	0	\
	pretty-simple	4.1.1.0	0	\
	prettyprinter	1.7.1	0	\
	prettyprinter-ansi-terminal	1.1.3	0	\
	primitive	0.7.4.0	0	\
	random	1.2.1.1	0	\
	regex-base	0.94.0.2	1	\
	regex-tdfa	1.3.2	0	\
	safe	0.3.19	0	\
	scientific	0.3.7.0	3	\
	semialign	1.2.0.1	3	\
	semigroupoids	5.3.7	0	\
	shakespeare	2.0.30	0	\
	split	0.2.3.5	0	\
	splitmix	0.1.0.4	1	\
	strict	0.4.0.1	4	\
	tabular	0.2.2.8	0	\
	tagged	0.8.6.1	3	\
	tasty	1.4.2.3	0	\
	tasty-hunit	0.10.0.3	0	\
	temporary	1.3	0	\
	text-short	0.1.5	1	\
	th-abstraction	0.4.5.0	0	\
	th-compat	0.1.4	0	\
	th-lift	0.8.2	2	\
	these	1.1.1.1	6	\
	time-compat	1.9.6.1	4	\
	timeit	2.0	2	\
	transformers-compat	0.7.2	0	\
	uglymemo	0.1.0.1	0	\
	unbounded-delays	0.1.1.1	0	\
	unordered-containers	0.2.19.1	1	\
	utf8-string	1.0.2	0	\
	utility-ht	0.0.16	0	\
	uuid-types	1.0.5	3	\
	vector	0.12.3.1	2	\
	wcwidth	0.0.2	0	\
	witherable	0.4.2	3	\
	wizards	1.0.3	1

.include <bsd.port.mk>
