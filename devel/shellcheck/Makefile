COMMENT =		shell script analysis tool

MODCABAL_STEM =		ShellCheck
MODCABAL_VERSION =	0.10.0
MODCABAL_EXECUTABLES =	shellcheck
PKGNAME =		${DISTNAME:L}
CATEGORIES =		devel
HOMEPAGE =		https://www.shellcheck.net/

MAINTAINER =		Caspar Schutijser <caspar@schutijser.com>

# GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB =		c ffi gmp iconv m pthread util

# cabal-bundler --openbsd ShellCheck-0.10.0 --executable shellcheck
MODULES =		devel/cabal
MODCABAL_MANIFEST	= \
	Diff	0.5	1	\
	OneTuple	0.4.1.1	1	\
	QuickCheck	2.14.3	0	\
	StateVar	1.2.2	0	\
	aeson	2.2.1.0	1	\
	assoc	1.1	1	\
	base-orphans	0.9.1	0	\
	bifunctors	5.6.2	0	\
	comonad	5.0.8	2	\
	contravariant	1.5.5	0	\
	data-fix	0.3.2	5	\
	distributive	0.6.2.1	1	\
	dlist	1.0	1	\
	fgl	5.8.2.0	0	\
	generically	0.1.1	2	\
	hashable	1.4.3.0	1	\
	indexed-traversable	0.1.3	0	\
	indexed-traversable-instances	0.1.1.2	2	\
	integer-conversion	0.1.0.1	1	\
	integer-logarithms	1.0.3.1	5	\
	network-uri	2.6.4.2	1	\
	primitive	0.9.0.0	1	\
	random	1.2.1.2	0	\
	regex-base	0.94.0.2	4	\
	regex-tdfa	1.3.2.2	2	\
	scientific	0.3.7.0	7	\
	semialign	1.3	1	\
	semigroupoids	6.0.0.1	1	\
	splitmix	0.1.0.5	0	\
	strict	0.5	1	\
	tagged	0.8.8	1	\
	text-iso8601	0.1	1	\
	text-short	0.1.5	3	\
	th-abstraction	0.6.0.0	2	\
	th-compat	0.1.5	0	\
	these	1.2	1	\
	time-compat	1.9.6.1	6	\
	transformers-compat	0.7.2	0	\
	unordered-containers	0.2.20	1	\
	uuid-types	1.0.5.1	0	\
	vector	0.13.1.0	1	\
	vector-stream	0.1.0.1	1	\
	witherable	0.4.2	4	\

LIB_DEPENDS =		converters/libiconv \
			devel/gmp \
			devel/libffi
RUN_DEPENDS-main =

NO_TEST =		Yes

# pkg_add pandoc; cd ${WRKSRC}; ./manpage; cp shellcheck.1 ${FILESDIR}/
# (and update md5)
post-patch:
	@[ `md5 < ${WRKSRC}/shellcheck.1.md` == b28cc3fbcd8c4978a8f0253955252fa5 ] || \
	    (echo "*** manpage changed; regenerate ${FILESDIR}/shellcheck.1"; sleep 3)

post-install:
	${INSTALL_DATA} ${FILESDIR}/shellcheck.1 ${PREFIX}/man/man1/

.include <bsd.port.mk>
