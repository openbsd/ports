COMMENT =		minimalistic text based status bar
REVISION =		1

MODCABAL_STEM =		xmobar
MODCABAL_VERSION =	0.46
CATEGORIES =		x11
HOMEPAGE =		https://xmobar.org

# BSD3
PERMIT_PACKAGE =	Yes

WANTLIB =		X11 Xext Xft Xinerama Xrandr Xrender \
			Xss c ffi gmp iconv \
			lib/inotify/inotify m pthread util z \
			cairo glib-2.0 gobject-2.0 harfbuzz intl \
			pango-1.0 pangocairo-1.0 png

MODULES =		devel/cabal
MODCABAL_FLAGS =	with_xft with_mpd with_mpris with_inotify

# % cabal get xmobar-0.42
# % cd ./xmobar-0.42
# % cabal v2-configure --flags="with_xft with_mpd with_mpris with_inotify"
# % cabal-bundler --openbsd xmobar -p ./dist-newstyle/cache/plan.json
MODCABAL_MANIFEST	= \
	OneTuple	0.4.1.1	0	\
	QuickCheck	2.14.2	0	\
	StateVar	1.2.2	0	\
	X11	1.10.3	0	\
	X11-xft	0.3.4	0	\
	adjunctions	4.4.2	1	\
	aeson	2.1.2.1	3	\
	alex	3.2.7.3	0	\
	appar	0.1.8	0	\
	asn1-encoding	0.9.6	2	\
	asn1-parse	0.9.5	0	\
	asn1-types	0.3.4	0	\
	assoc	1.1	0	\
	async	2.2.4	3	\
	attoparsec	0.14.4	3	\
	base-compat	0.13.0	0	\
	base-compat-batteries	0.13.0	0	\
	base-orphans	0.9.0	0	\
	base64-bytestring	1.2.1.0	0	\
	basement	0.0.15	0	\
	bifunctors	5.6.1	0	\
	bitvec	1.1.4.0	0	\
	blaze-builder	0.4.2.2	1	\
	blaze-html	0.9.1.2	2	\
	blaze-markup	0.8.2.8	4	\
	byteorder	1.0.4	0	\
	cabal-doctest	1.0.9	3	\
	cairo	0.13.8.2	0	\
	call-stack	0.4.0	0	\
	case-insensitive	1.2.1.0	0	\
	cereal	0.5.8.3	0	\
	colour	2.3.6	0	\
	comonad	5.0.8	1	\
	conduit	1.3.4.3	1	\
	conduit-extra	1.3.6	0	\
	connection	0.3.1	1	\
	contravariant	1.5.5	0	\
	cookie	0.4.6	0	\
	cryptonite	0.30	0	\
	data-array-byte	0.1.0.1	1	\
	data-default-class	0.1.2.0	0	\
	data-fix	0.3.2	4	\
	dbus	1.2.28	0	\
	distributive	0.6.2.1	1	\
	dlist	1.0	0	\
	extensible-exceptions	0.1.1.4	0	\
	foldable1-classes-compat	0.1	2	\
	free	5.2	1	\
	generically	0.1.1	1	\
	glib	0.13.8.2	0	\
	gtk2hs-buildtools	0.13.8.3	0	\
	happy	1.20.1.1	0	\
	hashable	1.4.2.0	1	\
	hashtables	1.3.1	0	\
	hinotify	0.4.1	0	\
	hourglass	0.2.12	0	\
	hsc2hs	0.68.9	0	\
	http-client	0.7.13.1	1	\
	http-client-tls	0.3.6.1	0	\
	http-conduit	2.3.8	0	\
	http-types	0.12.3	0	\
	indexed-traversable	0.1.2.1	0	\
	indexed-traversable-instances	0.1.1.2	1	\
	integer-logarithms	1.0.3.1	4	\
	invariant	0.6.1	0	\
	iproute	1.7.12	0	\
	kan-extensions	5.2.5	1	\
	lens	5.2.2	0	\
	libmpd	0.10.0.0	0	\
	memory	0.18.0	0	\
	mime-types	0.1.1.0	0	\
	mono-traversable	1.0.15.3	0	\
	network	3.1.2.8	0	\
	network-uri	2.6.4.2	0	\
	old-locale	1.0.0.7	2	\
	pango	0.13.8.2	0	\
	parallel	3.2.2.0	6	\
	parsec-numbers	0.1.0	0	\
	pem	0.2.4	0	\
	primitive	0.8.0.0	0	\
	profunctors	5.6.2	3	\
	random	1.2.1.1	0	\
	reflection	2.1.7	0	\
	regex-base	0.94.0.2	1	\
	regex-compat	0.95.2.1	2	\
	regex-posix	0.96.0.1	1	\
	resourcet	1.3.0	0	\
	safe-exceptions	0.1.7.3	0	\
	scientific	0.3.7.0	5	\
	semialign	1.3	0	\
	semigroupoids	6.0.0.1	0	\
	semigroups	0.20	0	\
	socks	0.6.1	0	\
	split	0.2.3.5	0	\
	splitmix	0.1.0.4	2	\
	streaming-commons	0.2.2.6	0	\
	strict	0.5	0	\
	tagged	0.8.7	0	\
	text-short	0.1.5	2	\
	th-abstraction	0.5.0.0	0	\
	th-compat	0.1.4	2	\
	th-lift	0.8.3	0	\
	these	1.2	0	\
	time-compat	1.9.6.1	5	\
	tls	1.6.0	0	\
	transformers-base	0.4.6	0	\
	transformers-compat	0.7.2	0	\
	typed-process	0.2.11.0	0	\
	unliftio-core	0.2.1.0	2	\
	unordered-containers	0.2.19.1	2	\
	utf8-string	1.0.2	0	\
	uuid-types	1.0.5	4	\
	vector	0.13.0.0	3	\
	vector-algorithms	0.9.0.1	2	\
	vector-stream	0.1.0.0	2	\
	void	0.7.3	0	\
	witherable	0.4.2	4	\
	x509	1.7.7	0	\
	x509-store	1.6.9	0	\
	x509-system	1.6.7	0	\
	x509-validation	1.6.12	0	\
	xml-conduit	1.9.1.2	0	\
	xml-types	0.3.8	0	\
	zlib	0.6.3.0	1

LIB_DEPENDS =		converters/libiconv \
			devel/gmp \
			devel/libffi \
			devel/pango \
			devel/libinotify \
			graphics/cairo

EXAMPLEDIR =		${PREFIX}/share/examples/xmobar

NO_TEST =		Yes

SUBST_VARS +=		LOCALBASE

post-patch:
	@cp ${FILESDIR}/Batt.hs ${WRKBUILD}/src/Xmobar/Plugins/Monitors
	@cp ${FILESDIR}/{apm.c,apm.h,Binding.hsc} \
		${WRKBUILD}/src/Xmobar/Plugins/Monitors/Batt

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLEDIR}
	${INSTALL_DATA} ${WRKSRC}/etc/xmobar.config ${EXAMPLEDIR}/xmobarrc

.include <bsd.port.mk>
