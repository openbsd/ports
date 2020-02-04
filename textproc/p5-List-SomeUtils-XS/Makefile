# $OpenBSD: Makefile,v 1.5 2020/02/04 21:17:30 fcambus Exp $

COMMENT =	XS implementation for List::SomeUtils

DISTNAME =	List-SomeUtils-XS-0.58
REVISION =	0

CATEGORIES =	textproc

# Artistic 2.0
PERMIT_PACKAGE =	Yes

WANTLIB +=	c perl

MODULES =	cpan

TEST_DEPENDS =	devel/p5-Test-LeakTrace \
		devel/p5-Test-Warnings>=0.006

.include <bsd.port.mk>
