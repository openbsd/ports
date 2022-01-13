# $OpenBSD: Makefile,v 1.51 2022/01/13 04:09:52 gnezdo Exp $

COMMENT =		minimalistic text based status bar

MODCABAL_STEM =		xmobar
MODCABAL_VERSION =	0.41
CATEGORIES =		x11
HOMEPAGE =		https://xmobar.org

# BSD3
PERMIT_PACKAGE =	Yes

WANTLIB =		X11 Xext Xft Xinerama Xrandr Xrender \
			Xss c charset ffi gmp iconv \
			lib/inotify/inotify m pthread util xml2

MODULES =		devel/cabal
MODCABAL_FLAGS =	with_xft with_mpd with_mpris with_inotify

# % cabal get xmobar-0.41
# % cd ./xmobar-0.41
# % cabal v2-configure --flags="with_xft with_mpd with_mpris with_inotify"
# % cabal-bundler --openbsd xmobar -p ./dist-newstyle/cache/plan.json
MODCABAL_MANIFEST	= \
	OneTuple	0.3.1	2	\
	QuickCheck	2.14.2	0	\
	StateVar	1.2.2	0	\
	X11	1.10.2	0	\
	X11-xft	0.3.4	0	\
	adjunctions	4.4	2	\
	aeson	2.0.3.0	0	\
	appar	0.1.8	0	\
	asn1-encoding	0.9.6	2	\
	asn1-parse	0.9.5	0	\
	asn1-types	0.3.4	0	\
	assoc	1.0.2	2	\
	async	2.2.4	1	\
	attoparsec	0.14.4	0	\
	base-compat	0.12.1	0	\
	base-compat-batteries	0.12.1	2	\
	base-orphans	0.8.6	0	\
	base64-bytestring	1.2.1.0	0	\
	basement	0.0.12	1	\
	bifunctors	5.5.11	1	\
	blaze-builder	0.4.2.2	1	\
	blaze-html	0.9.1.2	1	\
	blaze-markup	0.8.2.8	1	\
	byteorder	1.0.4	0	\
	cabal-doctest	1.0.9	0	\
	call-stack	0.4.0	0	\
	case-insensitive	1.2.1.0	0	\
	cereal	0.5.8.2	0	\
	comonad	5.0.8	1	\
	conduit	1.3.4.2	0	\
	conduit-extra	1.3.5	0	\
	connection	0.3.1	1	\
	contravariant	1.5.5	0	\
	cookie	0.4.5	0	\
	cryptonite	0.29	0	\
	data-default-class	0.1.2.0	0	\
	data-fix	0.3.2	2	\
	dbus	1.2.22	0	\
	distributive	0.6.2.1	1	\
	dlist	1.0	0	\
	extensible-exceptions	0.1.1.4	0	\
	free	5.1.7	1	\
	hashable	1.4.0.2	0	\
	hinotify	0.4.1	0	\
	hourglass	0.2.12	0	\
	hsc2hs	0.68.8	0	\
	http-client	0.7.9	0	\
	http-client-tls	0.3.5.3	1	\
	http-conduit	2.3.8	0	\
	http-types	0.12.3	0	\
	indexed-traversable	0.1.2	1	\
	indexed-traversable-instances	0.1.1	0	\
	integer-logarithms	1.0.3.1	2	\
	invariant	0.5.5	0	\
	iproute	1.7.12	0	\
	kan-extensions	5.2.3	0	\
	lens	5.1	1	\
	libmpd	0.10.0.0	0	\
	memory	0.16.0	1	\
	mime-types	0.1.0.9	0	\
	mono-traversable	1.0.15.3	0	\
	network	3.1.2.5	0	\
	network-uri	2.6.4.1	0	\
	old-locale	1.0.0.7	2	\
	parallel	3.2.2.0	4	\
	parsec-numbers	0.1.0	0	\
	pem	0.2.4	0	\
	primitive	0.7.3.0	0	\
	profunctors	5.6.2	2	\
	random	1.2.1	0	\
	reflection	2.1.6	1	\
	regex-base	0.94.0.2	0	\
	regex-compat	0.95.2.1	1	\
	regex-posix	0.96.0.1	0	\
	resourcet	1.2.4.3	0	\
	safe-exceptions	0.1.7.2	0	\
	scientific	0.3.7.0	2	\
	semialign	1.2.0.1	1	\
	semigroupoids	5.3.7	0	\
	semigroups	0.20	0	\
	socks	0.6.1	0	\
	split	0.2.3.4	2	\
	splitmix	0.1.0.4	0	\
	streaming-commons	0.2.2.3	0	\
	strict	0.4.0.1	4	\
	tagged	0.8.6.1	2	\
	text-short	0.1.5	0	\
	th-abstraction	0.4.3.0	0	\
	th-compat	0.1.3	0	\
	th-lift	0.8.2	1	\
	these	1.1.1.1	5	\
	time-compat	1.9.6.1	3	\
	tls	1.5.6	0	\
	transformers-base	0.4.6	0	\
	transformers-compat	0.7.1	1	\
	typed-process	0.2.8.0	0	\
	unliftio-core	0.2.0.1	2	\
	unordered-containers	0.2.16.0	0	\
	utf8-string	1.0.2	0	\
	uuid-types	1.0.5	2	\
	vector	0.12.3.1	1	\
	vector-algorithms	0.8.0.4	1	\
	void	0.7.3	0	\
	witherable	0.4.2	2	\
	x509	1.7.5	1	\
	x509-store	1.6.7	1	\
	x509-system	1.6.6	0	\
	x509-validation	1.6.11	0	\
	xml-conduit	1.9.1.1	0	\
	xml-types	0.3.8	0	\
	zlib	0.6.2.3	1	\

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
	@cp ${FILESDIR}/{apm.c,apm.h,Binding.hsc} \
		${WRKBUILD}/src/Xmobar/Plugins/Monitors/Batt

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLEDIR}
	${INSTALL_DATA} ${WRKSRC}/examples/xmobar.config ${EXAMPLEDIR}/xmobarrc

.include <bsd.port.mk>
