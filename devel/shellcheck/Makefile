# $OpenBSD: Makefile,v 1.10 2021/10/20 01:55:12 gnezdo Exp $

COMMENT =		shell script analysis tool

MODCABAL_STEM =		ShellCheck
MODCABAL_VERSION =	0.7.2
MODCABAL_EXECUTABLES =	shellcheck
REVISION =		1
PKGNAME =		${DISTNAME:L}
CATEGORIES =		devel
HOMEPAGE =		https://www.shellcheck.net/

MAINTAINER =		Caspar Schutijser <caspar@schutijser.com>

# GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB =		c charset ffi gmp iconv m pthread util

# cabal-bundler --openbsd ShellCheck-0.7.2 --executable shellcheck
MODULES =		devel/cabal
MODCABAL_MANIFEST       = \
        Diff    0.4.0   0       \
        QuickCheck      2.14.2  0       \
        StateVar        1.2.2   0       \
        aeson   2.0.1.0 0       \
        assoc   1.0.2   1       \
        attoparsec      0.14.1  0       \
        base-compat     0.12.0  0       \
        base-compat-batteries   0.12.0  1       \
        base-orphans    0.8.5   0       \
        bifunctors      5.5.11  1       \
        comonad 5.0.8   1       \
        contravariant   1.5.5   0       \
        data-fix        0.3.2   0       \
        distributive    0.6.2.1 1       \
        dlist   1.0     0       \
        hashable        1.3.4.1 0       \
        indexed-traversable     0.1.1   1       \
        indexed-traversable-instances   0.1     0       \
        integer-logarithms      1.0.3.1 0       \
        primitive       0.7.2.0 0       \
        random  1.2.1   0       \
        regex-base      0.94.0.1        1       \
        regex-tdfa      1.3.1.1 1       \
        scientific      0.3.7.0 0       \
        semialign       1.2     1       \
        semigroupoids   5.3.6   1       \
        splitmix        0.1.0.3 0       \
        strict  0.4.0.1 1       \
        tagged  0.8.6.1 2       \
        th-abstraction  0.4.3.0 0       \
        these   1.1.1.1 2       \
        time-compat     1.9.6.1 0       \
        transformers-compat     0.7     0       \
        unordered-containers    0.2.14.0        0       \
        uuid-types      1.0.5   0       \
        vector  0.12.3.1        0       \
        witherable      0.4.2   0       \

LIB_DEPENDS =		converters/libiconv \
			devel/gmp \
			devel/libffi
RUN_DEPENDS-main =

NO_TEST =		Yes

# pkg_add pandoc; cd ${WRKSRC}; ./manpage; cp shellcheck.1 ${FILESDIR}/
# (and update md5)
post-patch:
	@[ `md5 < ${WRKSRC}/shellcheck.1.md` == e0bc56969657579f92b02bba09970ae4 ] || \
	    (echo "*** manpage changed; regenerate ${FILESDIR}/shellcheck.1"; sleep 3)

post-install:
	${INSTALL_DATA} ${FILESDIR}/shellcheck.1 ${PREFIX}/man/man1/

.include <bsd.port.mk>
