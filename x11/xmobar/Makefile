# $OpenBSD: Makefile,v 1.48 2021/02/28 19:35:41 gnezdo Exp $

COMMENT =		minimalistic text based status bar

MODCABAL_STEM =		xmobar
MODCABAL_VERSION =	0.37
CATEGORIES =		x11
HOMEPAGE =		http://xmobar.org

# BSD3
PERMIT_PACKAGE =	Yes

WANTLIB =		X11 Xext Xft Xinerama Xrandr Xrender \
			Xss c charset ffi gmp iconv \
			lib/inotify/inotify m pthread util xml2

MODULES =		devel/cabal
MODCABAL_FLAGS =	with_xft with_mpd with_mpris with_inotify

# % cabal get xmobar-0.37
# % cd ./xmobar-0.37
# % cabal v2-configure --flags="with_xft with_mpd with_mpris with_inotify"
# % cabal-bundler --openbsd xmobar -p ./dist-newstyle/cache/plan.json

MODCABAL_MANIFEST = \
	StateVar	1.2.1	0	\
	X11	1.9.2	0	\
	X11-xft	0.3.1	0	\
	adjunctions	4.4	2	\
	aeson	1.5.6.0	0	\
	asn1-encoding	0.9.6	2	\
	asn1-parse	0.9.5	0	\
	asn1-types	0.3.4	0	\
	assoc	1.0.2	1	\
	async	2.2.3	0	\
	attoparsec	0.13.2.5	0	\
	base-compat	0.11.2	0	\
	base-compat-batteries	0.11.2	0	\
	base-orphans	0.8.4	0	\
	base64-bytestring	1.2.0.1	0	\
	basement	0.0.11	2	\
	bifunctors	5.5.10	0	\
	blaze-builder	0.4.2.1	0	\
	blaze-html	0.9.1.2	0	\
	blaze-markup	0.8.2.7	0	\
	call-stack	0.3.0	0	\
	case-insensitive	1.2.1.0	0	\
	cereal	0.5.8.1	0	\
	comonad	5.0.8	0	\
	conduit	1.3.4	0	\
	conduit-extra	1.3.5	0	\
	connection	0.3.1	1	\
	contravariant	1.5.3	0	\
	cookie	0.4.5	0	\
	cryptonite	0.28	0	\
	data-default	0.7.1.1	0	\
	data-default-class	0.1.2.0	0	\
	data-default-instances-containers	0.0.1	0	\
	data-default-instances-dlist	0.0.1	0	\
	data-default-instances-old-locale	0.0.1	0	\
	data-fix	0.3.1	0	\
	dbus	1.2.19	0	\
	distributive	0.6.2.1	0	\
	dlist	1.0	0	\
	exceptions	0.10.4	1	\
	extensible-exceptions	0.1.1.4	0	\
	free	5.1.6	0	\
	hashable	1.3.1.0	0	\
	hinotify	0.4.1	0	\
	hourglass	0.2.12	0	\
	hsc2hs	0.68.7	1	\
	http-client	0.7.6	0	\
	http-client-tls	0.3.5.3	1	\
	http-conduit	2.3.8	0	\
	http-types	0.12.3	0	\
	indexed-traversable	0.1.1	0	\
	indexed-traversable-instances	0.1	0	\
	integer-logarithms	1.0.3.1	0	\
	invariant	0.5.4	0	\
	kan-extensions	5.2.2	0	\
	lens	5	0	\
	libmpd	0.10.0.0	0	\
	memory	0.15.0	1	\
	mime-types	0.1.0.9	0	\
	mono-traversable	1.0.15.1	0	\
	network	3.1.2.1	1	\
	network-uri	2.6.4.1	0	\
	old-locale	1.0.0.7	2	\
	parallel	3.2.2.0	3	\
	parsec-numbers	0.1.0	0	\
	pem	0.2.4	0	\
	primitive	0.7.1.0	2	\
	profunctors	5.6.2	0	\
	random	1.2.0	5	\
	reflection	2.1.6	0	\
	regex-base	0.94.0.1	0	\
	regex-compat	0.95.2.1	0	\
	regex-posix	0.96.0.0	2	\
	resourcet	1.2.4.2	0	\
	safe-exceptions	0.1.7.1	0	\
	scientific	0.3.6.2	0	\
	semigroupoids	5.3.5	0	\
	semigroups	0.19.1	0	\
	socks	0.6.1	0	\
	split	0.2.3.4	0	\
	splitmix	0.1.0.3	0	\
	streaming-commons	0.2.2.1	0	\
	strict	0.4.0.1	0	\
	tagged	0.8.6.1	0	\
	th-abstraction	0.4.2.0	0	\
	th-compat	0.1.1	0	\
	th-lift	0.8.2	0	\
	these	1.1.1.1	1	\
	time-compat	1.9.5	1	\
	tls	1.5.5	0	\
	transformers-base	0.4.5.2	0	\
	transformers-compat	0.6.6	0	\
	typed-process	0.2.6.0	0	\
	unliftio-core	0.2.0.1	1	\
	unordered-containers	0.2.13.0	0	\
	utf8-string	1.0.2	0	\
	uuid-types	1.0.4	0	\
	vector	0.12.2.0	0	\
	vector-algorithms	0.8.0.4	1	\
	void	0.7.3	0	\
	x509	1.7.5	1	\
	x509-store	1.6.7	1	\
	x509-system	1.6.6	0	\
	x509-validation	1.6.11	0	\
	xml-conduit	1.9.0.0	0	\
	xml-types	0.3.8	0	\
	zlib	0.6.2.2	0	\

LIB_DEPENDS =		converters/libiconv \
			devel/gmp \
			devel/libffi \
			devel/libinotify \
			textproc/libxml

EXAMPLEDIR =		${PREFIX}/share/examples/xmobar

NO_TEST =		Yes

SUBST_VARS +=		LOCALBASE

post-patch:
	@cp ${FILESDIR}/Batt.hs ${WRKBUILD}/src/Xmobar/Plugins/Monitors
	@mkdir ${WRKBUILD}/src/Xmobar/Plugins/Monitors/Batt
	@cp ${FILESDIR}/{apm.c,apm.h,Binding.hsc} \
		${WRKBUILD}/src/Xmobar/Plugins/Monitors/Batt

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLEDIR}
	${INSTALL_DATA} ${WRKSRC}/examples/xmobar.config ${EXAMPLEDIR}/xmobarrc

.include <bsd.port.mk>
