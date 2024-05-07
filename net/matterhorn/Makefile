COMMENT =		terminal client for the Mattermost chat system

MODCABAL_STEM =		matterhorn
MODCABAL_VERSION =	90000.0.0
REVISION =		1

CATEGORIES =		net

HOMEPAGE =		https://github.com/matterhorn-chat/matterhorn

MAINTAINER =		Pascal Stumpf <pascal@stumpf.co>

# BSD3
PERMIT_PACKAGE =	Yes

WANTLIB += c curses ffi gmp iconv m pthread util z

MODULES =		devel/cabal
LIB_DEPENDS =		converters/libiconv \
			devel/libffi \
			devel/gmp

NO_TEST =		Yes

WRKDIST =		${WRKDIR}
WRKSRC =		${WRKDIR}/${DISTNAME}

MODCABAL_BUILD_ARGS	= --allow-newer
MODCABAL_MANIFEST	= \
	Cabal	3.10.2.1	1	\
	Cabal-syntax	3.10.2.0	1	\
	HTTP	4000.4.1	3	\
	Hclip	3.0.0.4	0	\
	OneTuple	0.4.1.1	1	\
	QuickCheck	2.14.3	0	\
	SHA	1.6.4.4	0	\
	StateVar	1.2.2	0	\
	aeson	2.2.1.0	0	\
	ansi-terminal	1.1	0	\
	ansi-terminal-types	1.1	0	\
	asn1-encoding	0.9.6	2	\
	asn1-parse	0.9.5	0	\
	asn1-types	0.3.4	0	\
	aspell-pipe	0.6	0	\
	assoc	1.1	1	\
	async	2.2.5	0	\
	attoparsec	0.14.4	5	\
	base-compat	0.12.3	0	\
	base-compat-batteries	0.12.3	0	\
	base-orphans	0.9.1	0	\
	base16-bytestring	1.0.2.0	1	\
	base64-bytestring	1.2.1.0	1	\
	basement	0.0.16	0	\
	bifunctors	5.6.1	2	\
	bimap	0.5.0	0	\
	bitvec	1.1.5.0	1	\
	blaze-builder	0.4.2.3	0	\
	blaze-html	0.9.2.0	0	\
	blaze-markup	0.8.3.0	1	\
	brick	2.0	1	\
	brick-skylighting	1.0	0	\
	cabal-doctest	1.0.9	3	\
	case-insensitive	1.2.1.0	0	\
	cborg	0.2.10.0	0	\
	cereal	0.5.8.3	0	\
	colour	2.3.6	0	\
	commonmark	0.2.6	0	\
	commonmark-extensions	0.2.5.4	0	\
	comonad	5.0.8	2	\
	conduit	1.3.5	0	\
	conduit-extra	1.3.6	0	\
	config-ini	0.2.7.0	0	\
	contravariant	1.5.5	0	\
	cryptohash-md5	0.11.101.0	3	\
	cryptohash-sha1	0.11.101.0	3	\
	crypton	0.34	0	\
	crypton-connection	0.3.2	0	\
	crypton-x509	1.7.6	1	\
	crypton-x509-store	1.6.9	0	\
	crypton-x509-system	1.6.7	0	\
	crypton-x509-validation	1.6.12	0	\
	data-clist	0.2	1	\
	data-default-class	0.1.2.0	0	\
	data-fix	0.3.2	5	\
	directory	1.3.8.3	0	\
	distributive	0.6.2.1	1	\
	dlist	1.0	1	\
	emojis	0.1.3	0	\
	entropy	0.4.1.10	1	\
	extensible-exceptions	0.1.1.4	0	\
	filepath	1.4.101.0	0	\
	generically	0.1.1	2	\
	gitrev	1.3.1	0	\
	half	0.3.1	1	\
	happy	1.20.1.1	0	\
	hashable	1.4.3.0	1	\
	haskell-lexer	1.1.1	0	\
	hourglass	0.2.12	0	\
	hsc2hs	0.68.10	2	\
	http-media	0.8.1.1	1	\
	indexed-traversable	0.1.3	0	\
	indexed-traversable-instances	0.1.1.2	2	\
	integer-conversion	0.1.0.1	1	\
	integer-logarithms	1.0.3.1	5	\
	mattermost-api	90000.0.0	0	\
	megaparsec	9.6.1	0	\
	memory	0.18.0	0	\
	microlens	0.4.13.1	1	\
	microlens-ghc	0.4.14.2	0	\
	microlens-mtl	0.2.0.3	1	\
	microlens-platform	0.4.3.5	0	\
	microlens-th	0.4.3.14	0	\
	modern-uri	0.3.6.1	1	\
	mono-traversable	1.0.17.0	0	\
	network	3.1.4.0	1	\
	network-info	0.2.1	0	\
	network-uri	2.6.4.2	1	\
	old-locale	1.0.0.7	2	\
	old-time	1.1.0.4	0	\
	os-string	2.0.2	0	\
	parser-combinators	1.3.0	1	\
	pem	0.2.4	0	\
	pretty-show	1.10	0	\
	primitive	0.8.0.0	1	\
	process	1.6.18.0	2	\
	profunctors	5.6.2	3	\
	random	1.1	1	\
	reflection	2.1.7	1	\
	resource-pool	0.4.0.0	0	\
	resourcet	1.3.0	0	\
	safe	0.3.21	1	\
	scientific	0.3.7.0	7	\
	semialign	1.3	1	\
	semigroupoids	6.0.0.1	1	\
	semigroups	0.19.2	2	\
	serialise	0.2.6.1	1	\
	skylighting-core	0.12.3.1	0	\
	socks	0.6.1	0	\
	split	0.2.5	0	\
	splitmix	0.1.0.5	0	\
	stm-delay	0.1.1.1	0	\
	streaming-commons	0.2.2.6	1	\
	strict	0.5	1	\
	tagged	0.8.8	0	\
	temporary	1.3	0	\
	text-iso8601	0.1	1	\
	text-short	0.1.5	3	\
	text-zipper	0.13	0	\
	th-abstraction	0.7.0.0	0	\
	th-compat	0.1.4	4	\
	these	1.2	1	\
	time-compat	1.9.6.1	6	\
	timezone-olson	0.2.1	0	\
	timezone-series	0.1.13	1	\
	tls	2.0.1	1	\
	transformers-compat	0.7.2	0	\
	typed-process	0.2.11.1	0	\
	unicode-data	0.4.0.1	2	\
	unicode-transforms	0.4.0.1	4	\
	unix	2.8.5.0	1	\
	unix-compat	0.7.1	0	\
	unix-time	0.4.12	0	\
	unliftio-core	0.2.1.0	3	\
	unordered-containers	0.2.20	1	\
	utf8-string	1.0.2	0	\
	uuid	1.3.15	3	\
	uuid-types	1.0.5.1	0	\
	vector	0.13.1.0	0	\
	vector-algorithms	0.9.0.1	3	\
	vector-stream	0.1.0.1	0	\
	vty	6.0	1	\
	vty-crossplatform	0.2.0.0	1	\
	vty-unix	0.1.0.0	1	\
	websockets	0.13.0.0	0	\
	witherable	0.4.2	4	\
	word-wrap	0.4.1	1	\
	xdg-basedir	0.2.2	0	\
	xml-conduit	1.9.1.3	0	\
	xml-types	0.3.8	0	\
	zlib	0.7.0.0	0	\

.include <bsd.port.mk>
