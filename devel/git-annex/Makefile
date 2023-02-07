COMMENT =	use git to manage files without checking them in
REVISION =	0

CATEGORIES =	devel
HOMEPAGE =	https://git-annex.branchable.com/

# Many licenses listed in COPYRIGHT with AGPL-3+ being the most
# restrictive. All permit redistribution.
PERMIT_PACKAGE =	Yes

WANTLIB +=		c ffi gmp iconv m magic pthread util z

LIB_DEPENDS =		converters/libiconv \
			devel/gmp \
			devel/libffi \
			devel/libmagic

RUN_DEPENDS =		devel/git \
			net/rsync

BUILD_DEPENDS =		devel/git

MODULES =       	devel/cabal

# happy: ... hGetContents: invalid argument (invalid byte sequence)
MAKE_ENV =	LC_ALL=en_US.UTF-8

MODCABAL_STEM =		git-annex
MODCABAL_VERSION =	10.20221103
MODCABAL_BUILD_ARGS =	--allow-newer

MAN1_STAGING_DIR = ${WRKBUILD}/man1_staging

# bloomfilter doesn't have a new release yet. This is a rare situation
# and so far there was no need to patch the dependencies. Thus it is
# done ad-hoc instead of supporting directly via normal `make patch`.
# If this code doesn't disappear by 2023, it might sense to support
# this flow properly in cabal.port.mk.
post-patch:
	# https://github.com/bos/bloomfilter/pull/20
	${PATCH} -d ${WRKDIR}/bloomfilter-2.0.1.0 < ${PATCHDIR}/0001-Fix-build-with-GHC-9.2.patch

post-build:
	@mkdir -p ${MAN1_STAGING_DIR}
	@for source in \
	  ${WRKBUILD}/doc/git-annex*.mdwn ${WRKBUILD}/doc/git-remote-*.mdwn; do \
	  progname=$$(basename $${source%.mdwn}); \
	  perl ${WRKBUILD}/Build/mdwn2man $$progname 1 $$source \
	    > ${MAN1_STAGING_DIR}/$$progname.1; \
	done

# Manual reimplementation of postCopy hook of Setup.hs
post-install:
	@ln -s git-annex ${PREFIX}/bin/git-annex-shell
	@ln -s git-annex ${PREFIX}/bin/git-remote-tor-annex
	${INSTALL_MAN_DIR} ${PREFIX}/man/man1
	${INSTALL_MAN} ${MAN1_STAGING_DIR}/*.1 ${PREFIX}/man/man1

MODCABAL_MANIFEST = \
	DAV	1.3.4	0	\
	Glob	0.10.2	3	\
	HUnit	1.6.2.0	0	\
	IfElse	0.85	0	\
	OneTuple	0.3.1	3	\
	Only	0.1	1	\
	QuickCheck	2.14.2	0	\
	SafeSemaphore	0.10.1	1	\
	StateVar	1.2.2	0	\
	adjunctions	4.4.2	0	\
	aeson	2.1.1.0	0	\
	alex	3.2.7.1	0	\
	ansi-terminal	0.11.4	0	\
	ansi-wl-pprint	0.6.9	3	\
	appar	0.1.8	0	\
	asn1-encoding	0.9.6	2	\
	asn1-parse	0.9.5	0	\
	asn1-types	0.3.4	0	\
	assoc	1.0.2	3	\
	async	2.2.4	2	\
	attoparsec	0.14.4	2	\
	attoparsec-iso8601	1.1.0.0	0	\
	auto-update	0.1.6	0	\
	aws	0.23	0	\
	base-compat	0.12.2	0	\
	base-compat-batteries	0.12.2	0	\
	base-orphans	0.8.7	0	\
	base16-bytestring	1.0.2.0	0	\
	base64-bytestring	1.2.1.0	0	\
	basement	0.0.15	0	\
	bencode	0.6.1.1	0	\
	bifunctors	5.5.14	0	\
	binary-orphans	1.0.3	0	\
	bitvec	1.1.3.0	0	\
	blaze-builder	0.4.2.2	1	\
	blaze-html	0.9.1.2	2	\
	blaze-markup	0.8.2.8	3	\
	bloomfilter	2.0.1.0	2	\
	bsb-http-chunked	0.0.0.4	3	\
	byteable	0.1.1	0	\
	byteorder	1.0.4	0	\
	cabal-doctest	1.0.9	2	\
	call-stack	0.4.0	0	\
	case-insensitive	1.2.1.0	0	\
	cassava	0.5.3.0	0	\
	cereal	0.5.8.3	0	\
	cipher-aes	0.2.11	0	\
	clientsession	0.9.1.2	0	\
	clock	0.8.3	0	\
	code-page	0.2.1	0	\
	colour	2.3.6	0	\
	comonad	5.0.8	1	\
	concurrent-output	1.10.16	0	\
	conduit	1.3.4.3	1	\
	conduit-extra	1.3.6	0	\
	connection	0.3.1	1	\
	contravariant	1.5.5	0	\
	cookie	0.4.5	0	\
	cprng-aes	0.6.1	0	\
	criterion	1.6.0.0	0	\
	criterion-measurement	0.2.0.0	0	\
	crypto-api	0.13.3	1	\
	crypto-cipher-types	0.0.9	0	\
	crypto-random	0.0.9	1	\
	cryptohash-md5	0.11.101.0	1	\
	cryptohash-sha1	0.11.101.0	1	\
	cryptonite	0.30	0	\
	cryptonite-conduit	0.2.2	1	\
	css-text	0.1.3.0	0	\
	data-default	0.7.1.1	0	\
	data-default-class	0.1.2.0	0	\
	data-default-instances-containers	0.0.1	0	\
	data-default-instances-dlist	0.0.1	0	\
	data-default-instances-old-locale	0.0.1	0	\
	data-fix	0.3.2	3	\
	dense-linear-algebra	0.1.0.0	0	\
	disk-free-space	0.1.0.1	3	\
	distributive	0.6.2.1	1	\
	dlist	1.0	0	\
	easy-file	0.2.2	0	\
	edit-distance	0.2.2.1	1	\
	email-validate	2.3.2.18	0	\
	entropy	0.4.1.10	0	\
	fast-logger	3.1.1	0	\
	feed	1.3.2.1	0	\
	file-embed	0.0.15.0	0	\
	filepath-bytestring	1.4.2.1.12	0	\
	free	5.1.10	0	\
	generically	0.1	0	\
	git-lfs	1.2.0	0	\
	happy	1.20.0	1	\
	hashable	1.4.1.0	0	\
	hjsmin	0.2.0.4	2	\
	hourglass	0.2.12	0	\
	hsc2hs	0.68.8	1	\
	http-api-data	0.5	1	\
	http-client	0.7.13.1	0	\
	http-client-restricted	0.0.5	0	\
	http-client-tls	0.3.6.1	0	\
	http-conduit	2.3.8	0	\
	http-date	0.0.11	0	\
	http-types	0.12.3	0	\
	http2	3.0.3	0	\
	indexed-traversable	0.1.2	2	\
	indexed-traversable-instances	0.1.1.1	0	\
	integer-logarithms	1.0.3.1	3	\
	invariant	0.6	1	\
	iproute	1.7.12	0	\
	js-chart	2.9.4.1	0	\
	kan-extensions	5.2.5	0	\
	language-javascript	0.7.1.0	0	\
	lens	5.2	0	\
	libyaml	0.1.2	1	\
	lift-type	0.1.1.1	0	\
	lifted-base	0.2.3.12	0	\
	magic	1.1	0	\
	math-functions	0.3.4.2	0	\
	memory	0.18.0	0	\
	microlens	0.4.13.0	0	\
	microlens-th	0.4.3.10	1	\
	microstache	1.0.2.2	0	\
	mime-types	0.1.1.0	0	\
	monad-control	1.0.3.1	0	\
	monad-logger	0.3.37	2	\
	monad-loops	0.4.3	0	\
	mono-traversable	1.0.15.3	0	\
	mountpoints	1.0.2	0	\
	mwc-random	0.15.0.2	1	\
	network	3.1.2.7	0	\
	network-bsd	2.8.1.0	4	\
	network-byte-order	0.1.6	1	\
	network-info	0.2.1	0	\
	network-multicast	0.3.2	0	\
	network-uri	2.6.4.1	0	\
	old-locale	1.0.0.7	2	\
	old-time	1.1.0.3	2	\
	optparse-applicative	0.17.0.0	0	\
	parallel	3.2.2.0	5	\
	path-pieces	0.2.1	1	\
	pem	0.2.4	0	\
	persistent	2.14.4.2	0	\
	persistent-sqlite	2.13.1.0	0	\
	persistent-template	2.12.0.0	0	\
	primitive	0.7.4.0	0	\
	profunctors	5.6.2	2	\
	psqueues	0.2.7.3	0	\
	random	1.2.1.1	0	\
	recv	0.0.0	0	\
	reflection	2.1.6	1	\
	regex-base	0.94.0.2	1	\
	regex-tdfa	1.3.2	0	\
	resource-pool	0.3.1.0	0	\
	resourcet	1.3.0	0	\
	safe	0.3.19	0	\
	safe-exceptions	0.1.7.3	0	\
	sandi	0.5	1	\
	scientific	0.3.7.0	3	\
	securemem	0.1.10	0	\
	semialign	1.2.0.1	3	\
	semigroupoids	5.3.7	0	\
	semigroups	0.20	0	\
	setenv	0.1.1.3	1	\
	shakespeare	2.0.30	0	\
	silently	1.2.5.3	0	\
	simple-sendfile	0.2.30	0	\
	skein	1.0.9.4	0	\
	socks	0.6.1	0	\
	split	0.2.3.5	0	\
	splitmix	0.1.0.4	1	\
	statistics	0.16.1.2	0	\
	stm-chans	3.0.0.6	0	\
	streaming-commons	0.2.2.5	0	\
	strict	0.4.0.1	4	\
	syb	0.7.2.2	0	\
	tagged	0.8.6.1	3	\
	tagsoup	0.14.8	0	\
	tasty	1.4.2.3	0	\
	tasty-hunit	0.10.0.3	0	\
	tasty-quickcheck	0.10.2	0	\
	tasty-rerun	1.1.18	3	\
	terminal-size	0.3.3	0	\
	text-short	0.1.5	1	\
	th-abstraction	0.4.5.0	0	\
	th-compat	0.1.4	0	\
	th-lift	0.8.2	2	\
	th-lift-instances	0.1.20	0	\
	these	1.1.1.1	6	\
	time-compat	1.9.6.1	4	\
	time-locale-compat	0.1.1.5	0	\
	time-manager	0.0.0	1	\
	tls	1.6.0	0	\
	tls-session-manager	0.0.4	0	\
	torrent	10000.1.1	0	\
	transformers-base	0.4.6	0	\
	transformers-compat	0.7.2	0	\
	typed-process	0.2.10.1	0	\
	unbounded-delays	0.1.1.1	0	\
	unix-compat	0.6	1	\
	unix-time	0.4.8	0	\
	unliftio	0.2.23.0	0	\
	unliftio-core	0.2.0.1	2	\
	unordered-containers	0.2.19.1	1	\
	utf8-string	1.0.2	0	\
	uuid	1.3.15	2	\
	uuid-types	1.0.5	3	\
	vault	0.3.1.5	2	\
	vector	0.13.0.0	1	\
	vector-algorithms	0.9.0.1	1	\
	vector-binary-instances	0.2.5.2	3	\
	vector-stream	0.1.0.0	1	\
	vector-th-unbox	0.2.2	3	\
	void	0.7.3	0	\
	wai	3.2.3	0	\
	wai-app-static	3.1.7.4	0	\
	wai-extra	3.1.13.0	1	\
	wai-logger	2.4.0	0	\
	warp	3.3.23	0	\
	warp-tls	3.3.4	0	\
	wcwidth	0.0.2	0	\
	witherable	0.4.2	3	\
	word8	0.1.3	0	\
	x509	1.7.7	0	\
	x509-store	1.6.9	0	\
	x509-system	1.6.7	0	\
	x509-validation	1.6.12	0	\
	xml-conduit	1.9.1.1	2	\
	xml-hamlet	0.5.0.2	0	\
	xml-types	0.3.8	0	\
	xss-sanitize	0.3.7.1	0	\
	yaml	0.11.8.0	2	\
	yesod	1.6.2.1	0	\
	yesod-core	1.6.24.0	1	\
	yesod-form	1.7.3	0	\
	yesod-persistent	1.6.0.8	0	\
	yesod-static	1.6.1.0	0	\
	zlib	0.6.3.0	0	\

.include <bsd.port.mk>
