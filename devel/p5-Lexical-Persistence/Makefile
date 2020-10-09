# $OpenBSD: Makefile,v 1.1.1.1 2020/10/09 01:52:49 afresh1 Exp $

COMMENT =	persistent lexical variable values for arbitrary calls

DISTNAME =	Lexical-Persistence-1.023

CATEGORIES =	devel

FIX_EXTRACT_PERMISSIONS =	Yes

# Perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan

RUN_DEPENDS =		devel/p5-Devel-LexAlias>=0.05 \
			devel/p5-PadWalker>=1.96

PKG_ARCH =		*

MAKE_ENV +=		TEST_POD=Yes

.include <bsd.port.mk>
