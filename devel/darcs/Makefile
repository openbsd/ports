COMMENT =		advanced revision control system written in Haskell

MODCABAL_STEM =		darcs
MODCABAL_VERSION =	2.16.5
CATEGORIES =		devel
HOMEPAGE =		http://www.darcs.net/

WANTLIB =		c charset curl>=2 curses ffi gmp iconv m \
			pthread util z

MODULES =		devel/cabal
MODCABAL_FLAGS =	curl -library
MODCABAL_MANIFEST =	\
	OneTuple	0.3.1	2	\
	StateVar	1.2.2	0	\
	aeson	2.0.2.0	1	\
	appar	0.1.8	0	\
	asn1-encoding	0.9.6	2	\
	asn1-parse	0.9.5	0	\
	asn1-types	0.3.4	0	\
	assoc	1.0.2	2	\
	async	2.2.4	1	\
	attoparsec	0.13.2.5	2	\
	base-compat	0.12.1	0	\
	base-compat-batteries	0.12.1	2	\
	base-orphans	0.8.6	0	\
	base16-bytestring	1.0.2.0	0	\
	base64-bytestring	1.2.1.0	0	\
	basement	0.0.12	1	\
	bifunctors	5.5.11	1	\
	blaze-builder	0.4.2.2	1	\
	byteorder	1.0.4	0	\
	case-insensitive	1.2.1.0	0	\
	cereal	0.5.8.2	0	\
	comonad	5.0.8	1	\
	conduit	1.3.4.2	0	\
	conduit-extra	1.3.5	0	\
	connection	0.3.1	1	\
	constraints	0.12	1	\
	contravariant	1.5.5	0	\
	cookie	0.4.5	0	\
	cryptonite	0.29	0	\
	data-default-class	0.1.2.0	0	\
	data-fix	0.3.2	2	\
	data-ordlist	0.4.7.0	0	\
	digest	0.0.1.3	0	\
	distributive	0.6.2.1	1	\
	dlist	1.0	0	\
	fgl	5.7.0.3	0	\
	filtrable	0.1.6.0	0	\
	hashable	1.3.5.0	1	\
	hourglass	0.2.12	0	\
	hsc2hs	0.68.8	0	\
	html	1.0.1.2	0	\
	http-client	0.7.11	1	\
	http-client-tls	0.3.6.1	0	\
	http-conduit	2.3.8	0	\
	http-types	0.12.3	0	\
	indexed-traversable	0.1.2	1	\
	indexed-traversable-instances	0.1.1	0	\
	integer-logarithms	1.0.3.1	2	\
	iproute	1.7.12	0	\
	memory	0.16.0	1	\
	mime-types	0.1.0.9	0	\
	mmap	0.5.9	0	\
	mono-traversable	1.0.15.3	0	\
	network	3.1.2.7	0	\
	network-uri	2.6.4.1	0	\
	old-locale	1.0.0.7	2	\
	old-time	1.1.0.3	2	\
	pem	0.2.4	0	\
	primitive	0.7.3.0	0	\
	random	1.2.1	0	\
	regex-applicative	0.3.4	0	\
	regex-base	0.94.0.2	0	\
	regex-tdfa	1.3.1.2	0	\
	resourcet	1.2.4.3	1	\
	scientific	0.3.7.0	2	\
	semialign	1.2.0.1	1	\
	semigroupoids	5.3.7	0	\
	semigroups	0.19.2	2	\
	socks	0.6.1	0	\
	split	0.2.3.4	2	\
	splitmix	0.1.0.4	0	\
	streaming-commons	0.2.2.4	0	\
	strict	0.4.0.1	4	\
	tagged	0.8.6.1	2	\
	tar	0.5.1.1	4	\
	temporary	1.3	0	\
	text-short	0.1.5	0	\
	th-abstraction	0.4.3.0	0	\
	th-compat	0.1.3	0	\
	these	1.1.1.1	5	\
	time-compat	1.9.6.1	3	\
	tls	1.5.7	0	\
	transformers-compat	0.7.1	1	\
	type-equality	1	3	\
	typed-process	0.2.8.0	0	\
	unix-compat	0.5.4	0	\
	unliftio-core	0.2.0.1	2	\
	unordered-containers	0.2.16.0	0	\
	utf8-string	1.0.2	0	\
	uuid-types	1.0.5	2	\
	vector	0.12.3.1	1	\
	vector-algorithms	0.8.0.4	1	\
	witherable	0.4.2	2	\
	x509	1.7.6	0	\
	x509-store	1.6.9	0	\
	x509-system	1.6.7	0	\
	x509-validation	1.6.12	0	\
	zip-archive	0.4.1	1	\
	zlib	0.6.2.3	1	\

LIB_DEPENDS =		converters/libiconv \
			devel/gmp \
			devel/libffi \
			net/curl

post-install:
	${INSTALL_MAN_DIR} ${PREFIX}/man/man1
	${INSTALL_MAN} $$(find ${WRKBUILD} -name darcs.1 -print) ${PREFIX}/man/man1

# GPLv2
PERMIT_PACKAGE =	Yes

.include <bsd.port.mk>
