V =		3.1.8
COMMENT =	convert between markup and document formats
PKGNAME =	pandoc-${V}

CATEGORIES =	converters textproc

HOMEPAGE =	https://pandoc.org

MAINTAINER = 	Evan Silberman <evan@jklol.net>

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB =		c ffi gmp iconv m pthread util z

LIB_DEPENDS =		converters/libiconv \
			devel/gmp \
			devel/libffi

# there are tests, but not hooked up
NO_TEST =		Yes

MODULES =		devel/cabal
MODCABAL_FLAGS =	embed_data_files
MODCABAL_STEM =		pandoc-cli
MODCABAL_VERSION =	0.1.1.1
MODCABAL_EXECUTABLES =	pandoc

post-install:
	${INSTALL_MAN} ${WRKDIR}/${PKGNAME}/man/pandoc.1 ${PREFIX}/man/man1


MODCABAL_MANIFEST	= \
	Glob	0.10.2	3	\
	HUnit	1.6.2.0	0	\
	JuicyPixels	3.3.8	0	\
	OneTuple	0.4.1.1	0	\
	Only	0.1	2	\
	QuickCheck	2.14.3	0	\
	SHA	1.6.4.4	0	\
	StateVar	1.2.2	0	\
	aeson	2.1.2.1	3	\
	aeson-pretty	0.8.10	0	\
	alex	3.4.0.0	0	\
	ansi-terminal	1.0	0	\
	ansi-terminal-types	0.11.5	1	\
	appar	0.1.8	0	\
	asn1-encoding	0.9.6	2	\
	asn1-parse	0.9.5	0	\
	asn1-types	0.3.4	0	\
	assoc	1.1	0	\
	async	2.2.4	3	\
	attoparsec	0.14.4	4	\
	auto-update	0.1.6	0	\
	base-compat	0.13.0	0	\
	base-compat-batteries	0.13.0	0	\
	base-orphans	0.9.0	0	\
	base-unicode-symbols	0.2.4.2	0	\
	base16-bytestring	1.0.2.0	0	\
	base64	0.4.2.4	3	\
	base64-bytestring	1.2.1.0	1	\
	basement	0.0.16	0	\
	bifunctors	5.6.1	1	\
	bitvec	1.1.5.0	0	\
	blaze-builder	0.4.2.3	0	\
	blaze-html	0.9.1.2	4	\
	blaze-markup	0.8.3.0	0	\
	boring	0.2.1	0	\
	bsb-http-chunked	0.0.0.4	3	\
	byteorder	1.0.4	0	\
	cabal-doctest	1.0.9	3	\
	call-stack	0.4.0	0	\
	case-insensitive	1.2.1.0	0	\
	cassava	0.5.3.0	4	\
	cereal	0.5.8.3	0	\
	citeproc	0.8.1	0	\
	colour	2.3.6	0	\
	commonmark	0.2.3	0	\
	commonmark-extensions	0.2.3.6	0	\
	commonmark-pandoc	0.2.1.3	0	\
	comonad	5.0.8	1	\
	conduit	1.3.5	0	\
	conduit-extra	1.3.6	0	\
	constraints	0.13.4	1	\
	contravariant	1.5.5	0	\
	cookie	0.4.6	0	\
	crypton	0.33	0	\
	crypton-connection	0.3.1	0	\
	crypton-x509	1.7.6	1	\
	crypton-x509-store	1.6.9	0	\
	crypton-x509-system	1.6.7	0	\
	crypton-x509-validation	1.6.12	0	\
	data-array-byte	0.1.0.1	1	\
	data-default	0.7.1.1	0	\
	data-default-class	0.1.2.0	0	\
	data-default-instances-containers	0.0.1	0	\
	data-default-instances-dlist	0.0.1	0	\
	data-default-instances-old-locale	0.0.1	0	\
	data-fix	0.3.2	4	\
	dec	0.0.5	1	\
	digest	0.0.1.7	1	\
	digits	0.3.1	0	\
	distributive	0.6.2.1	1	\
	dlist	1.0	1	\
	doclayout	0.4.0.1	0	\
	doctemplates	0.11	0	\
	easy-file	0.2.5	0	\
	emojis	0.1.3	0	\
	fast-logger	3.2.2	0	\
	file-embed	0.0.15.0	0	\
	foldable1-classes-compat	0.1	3	\
	generically	0.1.1	1	\
	gridtables	0.1.0.0	0	\
	haddock-library	1.11.0	2	\
	happy	1.20.1.1	0	\
	hashable	1.4.3.0	0	\
	haskell-lexer	1.1.1	0	\
	hourglass	0.2.12	0	\
	hsc2hs	0.68.10	0	\
	hslua	2.3.0	0	\
	hslua-aeson	2.3.0.1	0	\
	hslua-classes	2.3.0	0	\
	hslua-cli	1.4.1	0	\
	hslua-core	2.3.1	0	\
	hslua-list	1.1.1	0	\
	hslua-marshalling	2.3.0	0	\
	hslua-module-doclayout	1.1.0	0	\
	hslua-module-path	1.1.0	0	\
	hslua-module-system	1.1.0.1	0	\
	hslua-module-text	1.1.0.1	0	\
	hslua-module-version	1.1.0	0	\
	hslua-module-zip	1.1.0	0	\
	hslua-objectorientation	2.3.0	0	\
	hslua-packaging	2.3.0	0	\
	hslua-repl	0.1.1	0	\
	hslua-typing	0.1.0	0	\
	http-api-data	0.6	0	\
	http-client	0.7.14	0	\
	http-client-tls	0.3.6.3	0	\
	http-date	0.0.11	0	\
	http-media	0.8.1.1	0	\
	http-types	0.12.3	0	\
	http2	4.2.0	0	\
	indexed-traversable	0.1.2.1	0	\
	indexed-traversable-instances	0.1.1.2	1	\
	integer-conversion	0.1	0	\
	integer-logarithms	1.0.3.1	4	\
	iproute	1.7.12	0	\
	ipynb	0.2	1	\
	isocline	1.0.9	0	\
	jira-wiki-markup	1.5.1	0	\
	libyaml	0.1.2	1	\
	lpeg	1.0.4	0	\
	lua	2.3.1	0	\
	memory	0.18.0	0	\
	mime-types	0.1.1.0	0	\
	mmorph	1.2.0	3	\
	monad-control	1.0.3.1	0	\
	mono-traversable	1.0.15.3	0	\
	network	3.1.4.0	1	\
	network-byte-order	0.1.6	1	\
	network-uri	2.6.4.2	0	\
	old-locale	1.0.0.7	2	\
	old-time	1.1.0.3	2	\
	optparse-applicative	0.18.1.0	0	\
	ordered-containers	0.2.3	0	\
	pandoc	3.1.8	0	\
	pandoc-lua-engine	0.2.1.2	1	\
	pandoc-lua-marshal	0.2.2	0	\
	pandoc-server	0.1.0.3	0	\
	pandoc-types	1.23.1	0	\
	pem	0.2.4	0	\
	pretty-show	1.10	0	\
	prettyprinter	1.7.1	0	\
	prettyprinter-ansi-terminal	1.1.3	0	\
	primitive	0.8.0.0	1	\
	psqueues	0.2.7.3	0	\
	random	1.2.1.1	0	\
	recv	0.1.0	0	\
	regex-base	0.94.0.2	2	\
	regex-tdfa	1.3.2.2	1	\
	resourcet	1.3.0	0	\
	safe	0.3.19	0	\
	safe-exceptions	0.1.7.4	0	\
	scientific	0.3.7.0	5	\
	semialign	1.3	0	\
	semigroupoids	6.0.0.1	0	\
	servant	0.20	3	\
	servant-server	0.20	2	\
	simple-sendfile	0.2.32	0	\
	singleton-bool	0.1.7	0	\
	skylighting	0.14	0	\
	skylighting-core	0.14	0	\
	skylighting-format-ansi	0.1	0	\
	skylighting-format-blaze-html	0.1.1.1	0	\
	skylighting-format-context	0.1.0.2	0	\
	skylighting-format-latex	0.1	0	\
	socks	0.6.1	0	\
	some	1.0.5	0	\
	sop-core	0.5.0.2	2	\
	split	0.2.3.5	0	\
	splitmix	0.1.0.4	2	\
	streaming-commons	0.2.2.6	0	\
	strict	0.5	0	\
	string-conversions	0.4.0.1	1	\
	syb	0.7.2.4	0	\
	tagged	0.8.8	0	\
	tagsoup	0.14.8	0	\
	temporary	1.3	0	\
	texmath	0.12.8.3	0	\
	text-conversions	0.3.1.1	0	\
	text-iso8601	0.1	0	\
	text-short	0.1.5	2	\
	th-abstraction	0.5.0.0	0	\
	th-compat	0.1.4	3	\
	th-lift	0.8.4	0	\
	th-lift-instances	0.1.20	0	\
	these	1.2	0	\
	time-compat	1.9.6.1	5	\
	time-manager	0.0.1	0	\
	tls	1.9.0	0	\
	toml-parser	1.3.0.0	0	\
	transformers-base	0.4.6	0	\
	transformers-compat	0.7.2	0	\
	type-equality	1	5	\
	typed-process	0.2.11.0	0	\
	typst	0.3.2.0	0	\
	typst-symbols	0.1.4	0	\
	unicode-collation	0.1.3.5	0	\
	unicode-data	0.4.0.1	1	\
	unicode-transforms	0.4.0.1	3	\
	uniplate	1.6.13	1	\
	unix-compat	0.7	0	\
	unix-time	0.4.11	0	\
	unliftio	0.2.25.0	0	\
	unliftio-core	0.2.1.0	2	\
	unordered-containers	0.2.19.1	2	\
	utf8-string	1.0.2	0	\
	uuid-types	1.0.5	4	\
	vault	0.3.1.5	3	\
	vector	0.13.0.0	5	\
	vector-algorithms	0.9.0.1	2	\
	vector-stream	0.1.0.0	3	\
	wai	3.2.3	0	\
	wai-app-static	3.1.8	0	\
	wai-cors	0.2.7	0	\
	wai-extra	3.1.13.0	1	\
	wai-logger	2.4.0	0	\
	warp	3.3.29	0	\
	witherable	0.4.2	4	\
	word8	0.1.3	0	\
	xml	1.3.14	2	\
	xml-conduit	1.9.1.3	0	\
	xml-types	0.3.8	0	\
	yaml	0.11.11.2	2	\
	zip-archive	0.4.3	0	\
	zlib	0.6.3.0	3	\

.include <bsd.port.mk>
