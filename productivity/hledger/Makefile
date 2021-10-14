# $OpenBSD: Makefile,v 1.3 2021/10/14 05:12:25 gnezdo Exp $

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
MODCABAL_VERSION =	1.23

post-install:
	@${INSTALL_MAN} ${WRKSRC}/hledger.1 ${PREFIX}/man/man1

MODCABAL_MANIFEST	= \
	Decimal	0.5.2	0	\
	Diff	0.4.0	0	\
	Glob	0.10.1	1	\
	Only	0.1	1	\
	aeson	1.5.6.0	2	\
	aeson-pretty	0.8.8	0	\
	ansi-terminal	0.11	0	\
	ansi-wl-pprint	0.6.9	2	\
	assoc	1.0.2	1	\
	attoparsec	0.14.1	0	\
	base-compat	0.11.2	0	\
	base-compat-batteries	0.11.2	0	\
	base-orphans	0.8.5	0	\
	bifunctors	5.5.11	1	\
	blaze-builder	0.4.2.1	0	\
	blaze-html	0.9.1.2	1	\
	blaze-markup	0.8.2.8	0	\
	cabal-doctest	1.0.8	2	\
	call-stack	0.4.0	0	\
	case-insensitive	1.2.1.0	0	\
	cassava	0.5.2.0	4	\
	cassava-megaparsec	2.0.2	0	\
	clock	0.8.2	0	\
	cmdargs	0.10.21	0	\
	colour	2.3.6	0	\
	comonad	5.0.8	1	\
	control-monad-free	0.6.2	0	\
	csv	0.1.2	0	\
	data-default	0.7.1.1	0	\
	data-default-class	0.1.2.0	0	\
	data-default-instances-containers	0.0.1	0	\
	data-default-instances-dlist	0.0.1	0	\
	data-default-instances-old-locale	0.0.1	0	\
	data-fix	0.3.2	0	\
	distributive	0.6.2.1	1	\
	dlist	1.0	0	\
	extra	1.7.10	0	\
	file-embed	0.0.15.0	0	\
	githash	0.1.6.2	0	\
	hashable	1.3.3.0	0	\
	hashtables	1.2.4.1	0	\
	hledger-lib	1.23	0	\
	html	1.0.1.2	0	\
	indexed-traversable	0.1.1	1	\
	integer-logarithms	1.0.3.1	0	\
	lucid	2.9.12.1	0	\
	math-functions	0.3.4.2	0	\
	megaparsec	9.1.0	1	\
	microlens	0.4.12.0	0	\
	microlens-th	0.4.3.10	0	\
	mmorph	1.2.0	1	\
	old-locale	1.0.0.7	2	\
	optparse-applicative	0.16.1.0	1	\
	parser-combinators	1.3.0	0	\
	pretty-simple	4.0.0.0	0	\
	prettyprinter	1.7.1	0	\
	prettyprinter-ansi-terminal	1.1.3	0	\
	primitive	0.7.2.0	0	\
	random	1.2.1	0	\
	regex-base	0.94.0.1	1	\
	regex-tdfa	1.3.1.1	1	\
	safe	0.3.19	0	\
	scientific	0.3.7.0	0	\
	shakespeare	2.0.25	0	\
	split	0.2.3.4	2	\
	splitmix	0.1.0.3	0	\
	strict	0.4.0.1	1	\
	tabular	0.2.2.8	0	\
	tagged	0.8.6.1	2	\
	tasty	1.4.2	0	\
	tasty-hunit	0.10.0.3	0	\
	temporary	1.3	0	\
	text-short	0.1.3	3	\
	th-abstraction	0.4.3.0	0	\
	th-compat	0.1.3	0	\
	th-lift	0.8.2	1	\
	these	1.1.1.1	2	\
	time-compat	1.9.6.1	0	\
	timeit	2.0	1	\
	transformers-compat	0.7	0	\
	uglymemo	0.1.0.1	0	\
	unbounded-delays	0.1.1.1	0	\
	unordered-containers	0.2.14.0	0	\
	utf8-string	1.0.2	0	\
	utility-ht	0.0.16	0	\
	uuid-types	1.0.5	0	\
	vector	0.12.3.1	0	\
	wcwidth	0.0.2	0	\
	wizards	1.0.3	1	\

.include <bsd.port.mk>
