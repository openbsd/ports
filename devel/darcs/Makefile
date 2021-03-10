# $OpenBSD: Makefile,v 1.73 2021/03/10 01:34:15 gnezdo Exp $

COMMENT =		advanced revision control system written in Haskell

MODCABAL_STEM =		darcs
MODCABAL_VERSION =	2.16.3
REVISION =		0
CATEGORIES =		devel
HOMEPAGE =		http://www.darcs.net/

WANTLIB =		c charset curl>=2 curses ffi gmp iconv m \
			pthread util z

MODULES =		devel/cabal
MODCABAL_FLAGS =	curl -library
MODCABAL_MANIFEST =	\
	aeson	1.5.6.0	0	\
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
	basement	0.0.11	2	\
	bifunctors	5.5.10	0	\
	blaze-builder	0.4.2.1	0	\
	case-insensitive	1.2.1.0	0	\
	cereal	0.5.8.1	0	\
	comonad	5.0.8	0	\
	conduit	1.3.4.1	0	\
	conduit-extra	1.3.5	0	\
	connection	0.3.1	1	\
	constraints	0.12	0	\
	cookie	0.4.5	0	\
	cryptonite	0.27	0	\
	data-default-class	0.1.2.0	0	\
	data-fix	0.3.1	0	\
	data-ordlist	0.4.7.0	0	\
	digest	0.0.1.2	0	\
	distributive	0.6.2.1	0	\
	dlist	1.0	0	\
	fgl	5.7.0.3	0	\
	filtrable	0.1.6.0	0	\
	hashable	1.3.1.0	0	\
	hourglass	0.2.12	0	\
	hsc2hs	0.68.7	1	\
	html	1.0.1.2	0	\
	http-client	0.7.6	0	\
	http-client-tls	0.3.5.3	1	\
	http-conduit	2.3.8	0	\
	http-types	0.12.3	0	\
	indexed-traversable	0.1.1	0	\
	integer-logarithms	1.0.3.1	0	\
	memory	0.15.0	1	\
	mime-types	0.1.0.9	0	\
	mmap	0.5.9	0	\
	mono-traversable	1.0.15.1	0	\
	network	3.1.2.1	1	\
	network-uri	2.6.4.1	0	\
	old-locale	1.0.0.7	2	\
	old-time	1.1.0.3	2	\
	pem	0.2.4	0	\
	primitive	0.7.1.0	2	\
	random	1.2.0	5	\
	regex-applicative	0.3.4	0	\
	regex-base	0.94.0.1	0	\
	regex-compat-tdfa	0.95.1.4	0	\
	regex-tdfa	1.3.1.0	2	\
	resourcet	1.2.4.2	0	\
	scientific	0.3.6.2	0	\
	semigroups	0.19.1	0	\
	socks	0.6.1	0	\
	split	0.2.3.4	1	\
	splitmix	0.1.0.3	0	\
	streaming-commons	0.2.2.1	0	\
	strict	0.4.0.1	0	\
	tagged	0.8.6.1	0	\
	tar	0.5.1.1	3	\
	temporary	1.3	0	\
	th-abstraction	0.4.2.0	0	\
	th-compat	0.1.1	0	\
	these	1.1.1.1	1	\
	time-compat	1.9.5	1	\
	tls	1.5.5	0	\
	transformers-compat	0.6.6	0	\
	type-equality	1	2	\
	typed-process	0.2.6.0	0	\
	unix-compat	0.5.3	0	\
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
	zip-archive	0.4.1	1	\
	zlib	0.6.2.3	0	\


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
