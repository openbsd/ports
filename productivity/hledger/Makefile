COMMENT =		command-line interface for the hledger accounting system

CATEGORIES =		productivity

HOMEPAGE =		https://hledger.org

# GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB =		c curses ffi gmp iconv m pthread util

LIB_DEPENDS =		converters/libiconv \
			devel/gmp \
			devel/libffi

MODULES =		devel/cabal
MODCABAL_STEM =		hledger
MODCABAL_VERSION =	1.42.1

post-install:
	@${INSTALL_MAN} ${WRKSRC}/embeddedfiles/hledger.1 ${PREFIX}/man/man1

MODCABAL_MANIFEST	= \
	Decimal	0.5.2	0	\
	Diff	1.0.2	0	\
	Glob	0.10.2	3	\
	OneTuple	0.4.2	1	\
	Only	0.1	2	\
	QuickCheck	2.15.0.1	1	\
	StateVar	1.2.2	0	\
	aeson	2.2.3.0	3	\
	aeson-pretty	0.8.10	0	\
	ansi-terminal	1.1.2	0	\
	ansi-terminal-types	1.1	0	\
	assoc	1.1.1	1	\
	attoparsec	0.14.4	6	\
	base-compat	0.14.1	0	\
	base-orphans	0.9.3	0	\
	bifunctors	5.6.2	2	\
	blaze-builder	0.4.2.3	0	\
	blaze-html	0.9.2.0	1	\
	blaze-markup	0.8.3.0	2	\
	call-stack	0.4.0	0	\
	case-insensitive	1.2.1.0	0	\
	cassava	0.5.3.2	1	\
	cassava-megaparsec	2.1.1	0	\
	character-ps	0.1	0	\
	clock	0.8.4	0	\
	cmdargs	0.10.22	0	\
	colour	2.3.6	0	\
	comonad	5.0.9	1	\
	contravariant	1.5.5	0	\
	control-monad-free	0.6.2	0	\
	csv	0.1.2	0	\
	data-default	0.8.0.1	0	\
	data-default-class	0.2.0.0	0	\
	data-fix	0.3.4	1	\
	distributive	0.6.2.1	1	\
	dlist	1.0	2	\
	doclayout	0.5	0	\
	emojis	0.1.4.1	0	\
	encoding	0.10	0	\
	extensible-exceptions	0.1.1.4	0	\
	extra	1.8	0	\
	file-embed	0.0.16.0	0	\
	generically	0.1.1	4	\
	githash	0.1.7.0	0	\
	hashable	1.5.0.0	1	\
	hashtables	1.4.2	0	\
	hledger-lib	1.42.1	0	\
	hsc2hs	0.68.10	4	\
	html	1.0.1.2	0	\
	indexed-traversable	0.1.4	1	\
	indexed-traversable-instances	0.1.2	1	\
	integer-conversion	0.1.1	1	\
	integer-logarithms	1.0.4	0	\
	lucid	2.11.20250303	0	\
	math-functions	0.3.4.4	0	\
	megaparsec	9.7.0	0	\
	microlens	0.4.14.0	0	\
	microlens-th	0.4.3.17	0	\
	mmorph	1.2.0	3	\
	modern-uri	0.3.6.1	3	\
	network-uri	2.6.4.2	1	\
	optparse-applicative	0.18.1.0	1	\
	os-string	2.0.7	0	\
	parser-combinators	1.3.0	1	\
	pretty-simple	4.1.3.0	0	\
	prettyprinter	1.7.1	0	\
	prettyprinter-ansi-terminal	1.1.3	0	\
	primitive	0.9.0.0	2	\
	profunctors	5.6.2	3	\
	quote-quot	0.2.1.0	0	\
	random	1.2.1.3	0	\
	reflection	2.1.9	1	\
	regex-base	0.94.0.3	0	\
	regex-compat	0.95.2.2	0	\
	regex-posix	0.96.0.2	0	\
	regex-tdfa	1.3.2.3	0	\
	safe	0.3.21	1	\
	scientific	0.3.8.0	2	\
	semialign	1.3.1	2	\
	semigroupoids	6.0.1	2	\
	shakespeare	2.1.0.1	0	\
	split	0.2.5	0	\
	splitmix	0.1.1	0	\
	strict	0.5.1	1	\
	tabular	0.2.2.8	1	\
	tagged	0.8.9	0	\
	tasty	1.5.3	1	\
	tasty-hunit	0.10.2	0	\
	temporary	1.3	0	\
	terminal-size	0.3.4	1	\
	text-ansi	0.3.0.1	2	\
	text-builder-linear	0.1.3	0	\
	text-iso8601	0.1.1	2	\
	text-short	0.1.6	3	\
	th-abstraction	0.7.1.0	1	\
	th-compat	0.1.6	0	\
	th-lift	0.8.6	0	\
	these	1.2.1	2	\
	time-compat	1.9.8	0	\
	timeit	2.0	2	\
	transformers-compat	0.7.2	0	\
	uglymemo	0.1.0.1	0	\
	unordered-containers	0.2.20	4	\
	utf8-string	1.0.2	0	\
	utility-ht	0.0.17.2	0	\
	uuid-types	1.0.6	2	\
	vector	0.13.2.0	1	\
	vector-stream	0.1.0.1	3	\
	witherable	0.5	1	\
	wizards	1.0.3	3	\

.include <bsd.port.mk>
