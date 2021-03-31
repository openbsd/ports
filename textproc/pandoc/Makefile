# $OpenBSD: Makefile,v 1.2 2021/03/31 23:56:11 gnezdo Exp $

# Even with the highest memory limit pandoc fails to compile.
BROKEN-i386 =	ghc: out of memory (requested 2097152 bytes)

COMMENT =	convert between markup and document formats

CATEGORIES =	converters textproc

HOMEPAGE =	https://pandoc.org

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
MODCABAL_VERSION =	2.12

# Avoids cloning from github
post-extract:
	@rm ${WRKSRC}/cabal.project

post-install:
	${INSTALL_MAN} ${WRKSRC}/man/pandoc.1 ${PREFIX}/man/man1

MODCABAL_MANIFEST = \
	Glob	0.10.1	0	\
	HTTP	4000.3.15	2	\
	HsYAML	0.2.1.0	2	\
	JuicyPixels	3.3.5	0	\
	QuickCheck	2.14.2	0	\
	SHA	1.6.4.4	0	\
	aeson	1.5.6.0	0	\
	aeson-pretty	0.8.8	0	\
	ansi-terminal	0.11	0	\
	asn1-encoding	0.9.6	2	\
	asn1-parse	0.9.5	0	\
	asn1-types	0.3.4	0	\
	assoc	1.0.2	1	\
	async	2.2.3	0	\
	attoparsec	0.13.2.5	1	\
	base-compat	0.11.2	0	\
	base-compat-batteries	0.11.2	0	\
	base-orphans	0.8.4	0	\
	base16-bytestring	1.0.1.0	0	\
	base64-bytestring	1.2.0.1	0	\
	basement	0.0.11	3	\
	bifunctors	5.5.10	0	\
	blaze-builder	0.4.2.1	0	\
	blaze-html	0.9.1.2	1	\
	blaze-markup	0.8.2.8	0	\
	cabal-doctest	1.0.8	2	\
	case-insensitive	1.2.1.0	0	\
	cereal	0.5.8.1	0	\
	citeproc	0.3.0.9	0	\
	colour	2.3.5	0	\
	commonmark	0.1.1.4	0	\
	commonmark-extensions	0.2.0.4	0	\
	commonmark-pandoc	0.2.0.1	0	\
	comonad	5.0.8	0	\
	conduit	1.3.4.1	0	\
	conduit-extra	1.3.5	0	\
	connection	0.3.1	1	\
	cookie	0.4.5	0	\
	cryptonite	0.28	0	\
	data-default	0.7.1.1	0	\
	data-default-class	0.1.2.0	0	\
	data-default-instances-containers	0.0.1	0	\
	data-default-instances-dlist	0.0.1	0	\
	data-default-instances-old-locale	0.0.1	0	\
	data-fix	0.3.1	0	\
	digest	0.0.1.2	0	\
	distributive	0.6.2.1	0	\
	dlist	1.0	0	\
	doclayout	0.3	0	\
	doctemplates	0.9	0	\
	emojis	0.1	0	\
	errors	2.3.0	0	\
	file-embed	0.0.13.0	0	\
	haddock-library	1.9.0	0	\
	hashable	1.3.1.0	0	\
	hourglass	0.2.12	0	\
	hsc2hs	0.68.7	1	\
	hslua	1.3.0.1	0	\
	hslua-module-path	0.1.0.1	0	\
	hslua-module-system	0.2.2.1	0	\
	hslua-module-text	0.3.0.1	0	\
	http-client	0.7.6	0	\
	http-client-tls	0.3.5.3	1	\
	http-types	0.12.3	0	\
	indexed-traversable	0.1.1	0	\
	integer-logarithms	1.0.3.1	0	\
	ipynb	0.1.0.1	0	\
	jira-wiki-markup	1.3.4	0	\
	memory	0.15.0	1	\
	mime-types	0.1.0.9	0	\
	mono-traversable	1.0.15.1	0	\
	network	3.1.2.1	1	\
	network-uri	2.6.4.1	0	\
	old-locale	1.0.0.7	2	\
	pandoc-types	1.22	0	\
	pem	0.2.4	0	\
	primitive	0.7.1.0	2	\
	random	1.1	1	\
	resourcet	1.2.4.2	0	\
	rfc5051	0.2	0	\
	safe	0.3.19	0	\
	scientific	0.3.6.2	0	\
	skylighting	0.10.4	0	\
	skylighting-core	0.10.4	0	\
	socks	0.6.1	0	\
	split	0.2.3.4	1	\
	splitmix	0.1.0.3	0	\
	streaming-commons	0.2.2.1	0	\
	strict	0.4.0.1	0	\
	syb	0.7.2.1	0	\
	tagged	0.8.6.1	0	\
	tagsoup	0.14.8	0	\
	temporary	1.3	0	\
	texmath	0.12.1.1	0	\
	text-conversions	0.3.1	0	\
	th-abstraction	0.4.2.0	0	\
	th-compat	0.1.2	0	\
	these	1.1.1.1	1	\
	time-compat	1.9.5	1	\
	tls	1.5.5	0	\
	transformers-compat	0.6.6	0	\
	typed-process	0.2.6.0	0	\
	unicode-transforms	0.3.7.1	0	\
	uniplate	1.6.13	1	\
	unliftio-core	0.2.0.1	1	\
	unordered-containers	0.2.13.0	0	\
	utf8-string	1.0.2	0	\
	uuid-types	1.0.4	0	\
	vector	0.12.2.0	0	\
	vector-algorithms	0.8.0.4	1	\
	x509	1.7.5	1	\
	x509-store	1.6.7	1	\
	x509-system	1.6.6	0	\
	x509-validation	1.6.11	0	\
	xml	1.3.14	2	\
	xml-conduit	1.9.1.0	0	\
	xml-types	0.3.8	0	\
	zip-archive	0.4.1	1	\
	zlib	0.6.2.3	0

.include <bsd.port.mk>
