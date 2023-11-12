COMMENT =		shell script analysis tool

# https://github.com/koalaman/shellcheck/issues/2860
V =		0.9.0pl20231108
GH_ACCOUNT = 	koalaman
GH_COMMIT =	a71a13c2fca05b822cb16840792dc013ca76493f
GH_PROJECT =	shellcheck

# Overrides cabal.port.mk which would otherwise preempt bsd.port.mk
DISTNAME =	${GH_PROJECT}-${V}
DISTFILES =	${GH_DISTFILE}
PKGNAME =	${MODCABAL_EXECUTABLES}-${V}
SITES =		${SITES_GITHUB}

MODCABAL_STEM =		ShellCheck
MODCABAL_VERSION =	${V}
MODCABAL_EXECUTABLES =	shellcheck
PKGNAME =		${DISTNAME:L}
CATEGORIES =		devel
HOMEPAGE =		https://www.shellcheck.net/

MAINTAINER =		Caspar Schutijser <caspar@schutijser.com>

# GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB =		c ffi gmp iconv m pthread util

# cabal-bundler --openbsd ShellCheck-0.9.0 --executable shellcheck
MODULES =		devel/cabal
MODCABAL_MANIFEST	= \
	Diff	0.4.1	0	\
	OneTuple	0.4.1.1	1	\
	QuickCheck	2.14.3	0	\
	StateVar	1.2.2	0	\
	aeson	2.2.1.0	1	\
	assoc	1.1	1	\
	base-orphans	0.9.1	0	\
	bifunctors	5.6.1	2	\
	comonad	5.0.8	2	\
	contravariant	1.5.5	0	\
	data-array-byte	0.1.0.1	2	\
	data-fix	0.3.2	5	\
	distributive	0.6.2.1	1	\
	dlist	1.0	1	\
	fgl	5.8.2.0	0	\
	foldable1-classes-compat	0.1	4	\
	generically	0.1.1	2	\
	hashable	1.4.3.0	1	\
	indexed-traversable	0.1.3	0	\
	indexed-traversable-instances	0.1.1.2	2	\
	integer-conversion	0.1.0.1	1	\
	integer-logarithms	1.0.3.1	5	\
	network-uri	2.6.4.2	1	\
	primitive	0.9.0.0	0	\
	random	1.2.1.1	1	\
	regex-base	0.94.0.2	4	\
	regex-tdfa	1.3.2.2	2	\
	scientific	0.3.7.0	7	\
	semialign	1.3	1	\
	semigroupoids	6.0.0.1	1	\
	splitmix	0.1.0.5	0	\
	strict	0.5	1	\
	tagged	0.8.8	0	\
	text-iso8601	0.1	1	\
	text-short	0.1.5	3	\
	th-abstraction	0.6.0.0	1	\
	th-compat	0.1.4	3	\
	these	1.2	1	\
	time-compat	1.9.6.1	6	\
	transformers-compat	0.7.2	0	\
	unordered-containers	0.2.19.1	3	\
	uuid-types	1.0.5.1	0	\
	vector	0.13.1.0	0	\
	vector-stream	0.1.0.0	3	\
	witherable	0.4.2	4	\

LIB_DEPENDS =		converters/libiconv \
			devel/gmp \
			devel/libffi
RUN_DEPENDS-main =

NO_TEST =		Yes

# pkg_add pandoc; cd ${WRKSRC}; ./manpage; cp shellcheck.1 ${FILESDIR}/
# (and update md5)
post-patch:
	@[ `md5 < ${WRKSRC}/shellcheck.1.md` == f06c4a4f31f71dee0aa6b1890e469d5d ] || \
	    (echo "*** manpage changed; regenerate ${FILESDIR}/shellcheck.1"; sleep 3)

post-install:
	${INSTALL_DATA} ${FILESDIR}/shellcheck.1 ${PREFIX}/man/man1/

.include <bsd.port.mk>
