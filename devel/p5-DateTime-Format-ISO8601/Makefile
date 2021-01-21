# $OpenBSD: Makefile,v 1.16 2021/01/21 00:16:30 bluhm Exp $

COMMENT = 	DateTime parser for ISO8601 date formats

DISTNAME =	DateTime-Format-ISO8601-0.15
EPOCH =		0

CATEGORIES =	devel

# Perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan
RUN_DEPENDS =		devel/p5-DateTime>=1.45 \
			devel/p5-DateTime-Format-Builder>=0.77 \
			devel/p5-Params-ValidationCompiler>=0.26 \
			devel/p5-Specio>=0.18 \
			devel/p5-namespace-autoclean
TEST_DEPENDS =		devel/p5-Test2-Suite

PKG_ARCH =		*

.include <bsd.port.mk>
