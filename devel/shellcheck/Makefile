# $OpenBSD: Makefile,v 1.8 2021/04/25 17:29:48 gnezdo Exp $

COMMENT =		shell script analysis tool

MODCABAL_STEM =		ShellCheck
MODCABAL_VERSION =	0.7.2
MODCABAL_EXECUTABLES =	shellcheck
PKGNAME =		${DISTNAME:L}
CATEGORIES =		devel
HOMEPAGE =		https://www.shellcheck.net/

MAINTAINER =		Caspar Schutijser <caspar@schutijser.com>

# GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB =		c charset ffi gmp iconv m pthread util

MODULES =		devel/cabal
MODCABAL_MANIFEST       = \
        Diff    0.4.0   0       \
        QuickCheck      2.14.2  0       \
        aeson   1.5.6.0 1       \
        assoc   1.0.2   1       \
        attoparsec      0.14.1  0       \
        base-compat     0.11.2  0       \
        base-compat-batteries   0.11.2  0       \
        base-orphans    0.8.4   0       \
        bifunctors      5.5.10  0       \
        comonad 5.0.8   0       \
        data-fix        0.3.1   0       \
        distributive    0.6.2.1 0       \
        dlist   1.0     0       \
        hashable        1.3.1.0 0       \
        indexed-traversable     0.1.1   0       \
        integer-logarithms      1.0.3.1 0       \
        primitive       0.7.1.0 2       \
        random  1.2.0   5       \
        regex-base      0.94.0.1        0       \
        regex-tdfa      1.3.1.0 2       \
        scientific      0.3.6.2 0       \
        splitmix        0.1.0.3 0       \
        strict  0.4.0.1 0       \
        tagged  0.8.6.1 1       \
        th-abstraction  0.4.2.0 0       \
        these   1.1.1.1 1       \
        time-compat     1.9.5   1       \
        transformers-compat     0.6.6   0       \
        unordered-containers    0.2.13.0        0       \
        uuid-types      1.0.4   0       \
        vector  0.12.3.0        0

LIB_DEPENDS =		converters/libiconv \
			devel/gmp \
			devel/libffi
RUN_DEPENDS-main =

NO_TEST =		Yes

# TODO(gnezdo): find a lighter-weight option than pandoc used by
# ShellCheck's manpage converter or pre-format and carry the page with
# files directory. Gating ShellCheck on pandoc is a bad trade-off.
post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/${PKGNAME}
	${INSTALL_DATA} ${WRKSRC}/shellcheck.1.md ${PREFIX}/share/doc/${PKGNAME}

.include <bsd.port.mk>
