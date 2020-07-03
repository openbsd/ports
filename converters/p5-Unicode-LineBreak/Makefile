# $OpenBSD: Makefile,v 1.21 2020/07/03 21:44:33 sthen Exp $

COMMENT =	Unicode line breaking algorithm

DISTNAME =	Unicode-LineBreak-2019.001
CATEGORIES =	converters
MODULES =	cpan
REVISION =	0

# Perl
PERMIT_PACKAGE =	Yes

WANTLIB = c perl

CPAN_AUTHOR =		NEZUMI

AUTOCONF_VERSION =	2.59
AUTOMAKE_VERSION =	1.9

BUILD_DEPENDS =	${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS} \
		devel/libtool #needs autotools macros

MAKE_ENV =	AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		TEST_POD=Yes

RUN_DEPENDS =		mail/p5-MIME-Charset

CONFIGURE_ARGS =	--with-bundled-sombok \
			--disable-libthai

.include <bsd.port.mk>
