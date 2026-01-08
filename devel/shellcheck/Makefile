COMMENT =		shell script analysis tool

MODCABAL_STEM =		ShellCheck
MODCABAL_VERSION =	0.11.0
MODCABAL_EXECUTABLES =	shellcheck
PKGNAME =		${DISTNAME:L}
CATEGORIES =		devel
HOMEPAGE =		https://www.shellcheck.net/

MAINTAINER =		Caspar Schutijser <caspar@schutijser.com>

# GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB =		c ffi gmp iconv m pthread util

# cabal-bundler --openbsd ShellCheck-0.11.0 --executable shellcheck
MODULES =		devel/cabal
MODCABAL_MANIFEST	= \
	Diff	1.0.2	0	\
	OneTuple	0.4.2.1	0	\
	QuickCheck	2.16.0.0	0	\
	StateVar	1.2.2	0	\
	aeson	2.2.3.0	4	\
	ansi-terminal	1.1.5	0	\
	ansi-terminal-types	1.1.3	0	\
	assoc	1.1.1	1	\
	base-orphans	0.9.3	0	\
	bifunctors	5.6.2	2	\
	character-ps	0.1	0	\
	colour	2.3.6	0	\
	comonad	5.0.9	1	\
	contravariant	1.5.5	0	\
	data-fix	0.3.4	2	\
	distributive	0.6.2.1	1	\
	dlist	1.0	2	\
	fgl	5.8.3.0	2	\
	generically	0.1.1	4	\
	hashable	1.5.1.0	0	\
	indexed-traversable	0.1.4	1	\
	indexed-traversable-instances	0.1.2	1	\
	integer-conversion	0.1.1	1	\
	integer-logarithms	1.0.4	0	\
	network-uri	2.6.4.2	1	\
	optparse-applicative	0.19.0.0	0	\
	os-string	2.0.8	0	\
	prettyprinter	1.7.1	0	\
	prettyprinter-ansi-terminal	1.1.3	0	\
	primitive	0.9.1.0	1	\
	random	1.3.1	0	\
	regex-base	0.94.0.3	0	\
	regex-tdfa	1.3.2.5	0	\
	scientific	0.3.8.0	2	\
	semialign	1.3.1	2	\
	semigroupoids	6.0.1	2	\
	splitmix	0.1.2	0	\
	strict	0.5.1	1	\
	tagged	0.8.10	0	\
	tasty	1.5.3	2	\
	text-iso8601	0.1.1	2	\
	text-short	0.1.6	3	\
	th-abstraction	0.7.1.0	1	\
	th-compat	0.1.6	0	\
	these	1.2.1	2	\
	time-compat	1.9.8	0	\
	transformers-compat	0.7.2	0	\
	unordered-containers	0.2.21	2	\
	uuid-types	1.0.6	3	\
	vector	0.13.2.0	2	\
	vector-stream	0.1.0.1	4	\
	witherable	0.5	2	\

LIB_DEPENDS =		converters/libiconv \
			devel/gmp \
			devel/libffi
RUN_DEPENDS-main =

NO_TEST =		Yes

# pkg_add pandoc; cd ${WRKSRC}; ./manpage; cp shellcheck.1 ${FILESDIR}/
# (and update md5)
post-patch:
	@[ `md5 < ${WRKSRC}/shellcheck.1.md` == 4c5ca3383a710991d71139af84ad5c40 ] || \
	    (echo "*** manpage changed; regenerate ${FILESDIR}/shellcheck.1"; sleep 3)

post-install:
	${INSTALL_DATA} ${FILESDIR}/shellcheck.1 ${PREFIX}/man/man1/

.include <bsd.port.mk>
