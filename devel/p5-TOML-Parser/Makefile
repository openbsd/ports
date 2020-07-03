# $OpenBSD: Makefile,v 1.2 2020/07/03 21:45:11 sthen Exp $

COMMENT =	simple toml parser

DISTNAME =	TOML-Parser-0.91
CPAN_AUTHOR =	KARUPA
REVISION =	0

CATEGORIES =	devel

MAINTAINER =	Wen Heping <wenheping2000@hotmail.com>

# Perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan

RUN_DEPENDS =		converters/p5-Types-Serialiser \
			devel/p5-common-sense
TEST_DEPENDS =		devel/p5-Test-Deep \
			devel/p5-Test-Deep-Fuzzy

CONFIGURE_STYLE =	modbuild tiny

PKG_ARCH =		*

.include <bsd.port.mk>
