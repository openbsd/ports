# $OpenBSD: Makefile,v 1.2 2020/07/03 21:45:54 sthen Exp $

COMMENT =	isolated String helpers from B

CPAN_AUTHOR =	ATOOMIC
DISTNAME =	XString-0.002
REVISION =	0

CATEGORIES =	textproc

# Perl
PERMIT_PACKAGE =	Yes

WANTLIB =		c perl

MODULES =		cpan

TEST_DEPENDS =		devel/p5-Test2-Plugin-NoWarnings \
			devel/p5-Test2-Suite \
			devel/p5-Test2-Tools-Explain

.include <bsd.port.mk>
