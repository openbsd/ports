# $OpenBSD: Makefile,v 1.7 2021/02/28 19:58:09 gnezdo Exp $

COMMENT =		shell script analysis tool

MODCABAL_STEM =		ShellCheck
MODCABAL_VERSION =	0.7.1
MODCABAL_EXECUTABLES =	shellcheck
PKGNAME =		${DISTNAME:L}
CATEGORIES =		devel
HOMEPAGE =		https://www.shellcheck.net/

MAINTAINER =		Caspar Schutijser <caspar@schutijser.com>

# GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB =		c charset ffi gmp iconv m pthread util

MODULES =		devel/cabal
MODCABAL_MANIFEST = \
	Diff			0.4.0		 0 \
	QuickCheck		2.14.1		 0 \
	aeson			1.5.3.0		 0 \
	assoc			1.0.2		 0 \
	attoparsec		0.13.2.4	 0 \
	base-compat		0.11.1		 0 \
	base-compat-batteries	0.11.1		 0 \
	base-orphans		0.8.2		 0 \
	bifunctors		5.5.7		 1 \
	cabal-doctest		1.0.8		 2 \
	comonad			5.0.6		 1 \
	data-fix		0.3.0		 0 \
	distributive		0.6.2		 2 \
	dlist			1.0		 0 \
	hashable		1.3.0.0		 1 \
	integer-logarithms	1.0.3		 2 \
	primitive		0.7.1.0		 0 \
	random			1.2.0		 0 \
	regex-base		0.94.0.0	 1 \
	regex-tdfa		1.3.1.0		 1 \
	scientific		0.3.6.2		 0 \
	splitmix		0.1.0.1		 0 \
	strict			0.4		 0 \
	tagged			0.8.6		 2 \
	th-abstraction		0.3.2.0		 0 \
	these			1.1.1.1		 0 \
	time-compat		1.9.3		 0 \
	transformers-compat	0.6.5		 0 \
	unordered-containers	0.2.12.0	 0 \
	uuid-types		1.0.3		 3 \
	vector			0.12.1.2	 0 \

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
