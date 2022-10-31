
COMMENT =	convert between markup and document formats

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
MODCABAL_STEM =		pandoc
MODCABAL_VERSION =	2.19.2

# Avoids cloning from github
post-extract:
	@rm ${WRKSRC}/cabal.project

post-install:
	${INSTALL_MAN} ${WRKSRC}/man/pandoc.1 ${PREFIX}/man/man1

MODCABAL_MANIFEST	= \
	Glob	0.10.2	3	\
	HUnit	1.6.2.0	0	\
	HsYAML	0.2.1.1	1	\
	JuicyPixels	3.3.8	0	\
	OneTuple	0.3.1	3	\
	QuickCheck	2.14.2	0	\
	SHA	1.6.4.4	0	\
	StateVar	1.2.2	0	\
	aeson	2.1.0.0	2	\
	aeson-pretty	0.8.9	2	\
	ansi-terminal	0.11.3	0	\
	ansi-wl-pprint	0.6.9	3	\
	appar	0.1.8	0	\
	asn1-encoding	0.9.6	2	\
	asn1-parse	0.9.5	0	\
	asn1-types	0.3.4	0	\
	assoc	1.0.2	3	\
	async	2.2.4	2	\
	attoparsec	0.14.4	2	\
	attoparsec-iso8601	1.0.2.1	0	\
	auto-update	0.1.6	0	\
	base-compat	0.12.2	0	\
	base-compat-batteries	0.12.2	0	\
	base-orphans	0.8.7	0	\
	base16-bytestring	1.0.2.0	0	\
	base64	0.4.2.4	1	\
	base64-bytestring	1.2.1.0	0	\
	basement	0.0.15	0	\
	bifunctors	5.5.12	1	\
	bitvec	1.1.3.0	0	\
	blaze-builder	0.4.2.2	1	\
	blaze-html	0.9.1.2	2	\
	blaze-markup	0.8.2.8	3	\
	boring	0.2	2	\
	bsb-http-chunked	0.0.0.4	3	\
	byteorder	1.0.4	0	\
	cabal-doctest	1.0.9	2	\
	call-stack	0.4.0	0	\
	case-insensitive	1.2.1.0	0	\
	cereal	0.5.8.3	0	\
	citeproc	0.8.0.1	0	\
	colour	2.3.6	0	\
	commonmark	0.2.2	0	\
	commonmark-extensions	0.2.3.2	0	\
	commonmark-pandoc	0.2.1.2	0	\
	comonad	5.0.8	1	\
	conduit	1.3.4.2	0	\
	conduit-extra	1.3.6	0	\
	connection	0.3.1	1	\
	constraints	0.13.4	0	\
	contravariant	1.5.5	0	\
	cookie	0.4.5	0	\
	cryptonite	0.30	0	\
	data-default	0.7.1.1	0	\
	data-default-class	0.1.2.0	0	\
	data-default-instances-containers	0.0.1	0	\
	data-default-instances-dlist	0.0.1	0	\
	data-default-instances-old-locale	0.0.1	0	\
	data-fix	0.3.2	3	\
	dec	0.0.5	0	\
	digest	0.0.1.3	0	\
	distributive	0.6.2.1	1	\
	dlist	1.0	0	\
	doclayout	0.4	1	\
	doctemplates	0.10.0.2	1	\
	easy-file	0.2.2	0	\
	emojis	0.1.2	0	\
	fast-logger	3.1.1	0	\
	file-embed	0.0.15.0	0	\
	generically	0.1	0	\
	gridtables	0.0.3.0	0	\
	haddock-library	1.11.0	0	\
	happy	1.20.0	1	\
	hashable	1.4.1.0	0	\
	haskell-lexer	1.1	0	\
	hourglass	0.2.12	0	\
	hsc2hs	0.68.8	1	\
	hslua	2.2.1	0	\
	hslua-aeson	2.2.1	0	\
	hslua-classes	2.2.0	0	\
	hslua-core	2.2.1	0	\
	hslua-marshalling	2.2.1	0	\
	hslua-module-doclayout	1.0.4	0	\
	hslua-module-path	1.0.3	0	\
	hslua-module-system	1.0.2	0	\
	hslua-module-text	1.0.2	0	\
	hslua-module-version	1.0.2	0	\
	hslua-objectorientation	2.2.1	0	\
	hslua-packaging	2.2.1	0	\
	http-api-data	0.4.3	6	\
	http-client	0.7.13.1	0	\
	http-client-tls	0.3.6.1	0	\
	http-date	0.0.11	0	\
	http-media	0.8.0.0	6	\
	http-types	0.12.3	0	\
	http2	3.0.3	0	\
	indexed-traversable	0.1.2	2	\
	indexed-traversable-instances	0.1.1.1	0	\
	integer-logarithms	1.0.3.1	3	\
	iproute	1.7.12	0	\
	ipynb	0.2	1	\
	jira-wiki-markup	1.4.0	1	\
	libyaml	0.1.2	0	\
	lpeg	1.0.3	0	\
	lua	2.2.1	0	\
	memory	0.17.0	0	\
	mime-types	0.1.0.9	0	\
	mmorph	1.2.0	2	\
	monad-control	1.0.3.1	0	\
	mono-traversable	1.0.15.3	0	\
	network	3.1.2.7	0	\
	network-byte-order	0.1.6	1	\
	network-uri	2.6.4.1	0	\
	old-locale	1.0.0.7	2	\
	old-time	1.1.0.3	2	\
	optparse-applicative	0.17.0.0	0	\
	pandoc-lua-marshal	0.1.7	0	\
	pandoc-types	1.22.2.1	0	\
	pem	0.2.4	0	\
	pretty-show	1.10	0	\
	primitive	0.7.4.0	0	\
	psqueues	0.2.7.3	0	\
	random	1.2.1.1	0	\
	resourcet	1.2.6	0	\
	safe	0.3.19	0	\
	scientific	0.3.7.0	3	\
	semialign	1.2.0.1	3	\
	semigroupoids	5.3.7	0	\
	servant	0.19	4	\
	servant-server	0.19.1	2	\
	simple-sendfile	0.2.30	0	\
	singleton-bool	0.1.6	2	\
	skylighting	0.13	0	\
	skylighting-core	0.13	1	\
	skylighting-format-ansi	0.1	0	\
	skylighting-format-blaze-html	0.1	0	\
	skylighting-format-latex	0.1	0	\
	socks	0.6.1	0	\
	some	1.0.4	1	\
	sop-core	0.5.0.2	1	\
	split	0.2.3.5	0	\
	splitmix	0.1.0.4	1	\
	streaming-commons	0.2.2.4	0	\
	strict	0.4.0.1	4	\
	string-conversions	0.4.0.1	0	\
	syb	0.7.2.1	0	\
	tagged	0.8.6.1	3	\
	tagsoup	0.14.8	0	\
	temporary	1.3	0	\
	texmath	0.12.5.2	0	\
	text-conversions	0.3.1.1	0	\
	text-short	0.1.5	1	\
	th-abstraction	0.4.4.0	0	\
	th-compat	0.1.4	0	\
	th-lift	0.8.2	2	\
	th-lift-instances	0.1.20	0	\
	these	1.1.1.1	6	\
	time-compat	1.9.6.1	4	\
	time-manager	0.0.0	0	\
	tls	1.6.0	0	\
	transformers-base	0.4.6	0	\
	transformers-compat	0.7.2	0	\
	type-equality	1	4	\
	typed-process	0.2.10.1	0	\
	unicode-collation	0.1.3.2	0	\
	unicode-data	0.3.0	1	\
	unicode-transforms	0.4.0.1	0	\
	uniplate	1.6.13	1	\
	unix-compat	0.6	0	\
	unix-time	0.4.7	0	\
	unliftio	0.2.22.0	0	\
	unliftio-core	0.2.0.1	2	\
	unordered-containers	0.2.19.1	1	\
	utf8-string	1.0.2	0	\
	uuid-types	1.0.5	3	\
	vault	0.3.1.5	2	\
	vector	0.13.0.0	1	\
	vector-algorithms	0.9.0.1	0	\
	vector-stream	0.1.0.0	1	\
	wai	3.2.3	0	\
	wai-app-static	3.1.7.4	0	\
	wai-extra	3.1.12.1	0	\
	wai-logger	2.4.0	0	\
	warp	3.3.22	0	\
	witherable	0.4.2	3	\
	word8	0.1.3	0	\
	x509	1.7.7	0	\
	x509-store	1.6.9	0	\
	x509-system	1.6.7	0	\
	x509-validation	1.6.12	0	\
	xml	1.3.14	2	\
	xml-conduit	1.9.1.1	1	\
	xml-types	0.3.8	0	\
	yaml	0.11.8.0	0	\
	zip-archive	0.4.2.1	0	\
	zlib	0.6.3.0	0

.include <bsd.port.mk>
