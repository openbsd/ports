# $OpenBSD: Makefile,v 1.6 2020/07/03 21:45:47 sthen Exp $

COMMENT =	XS implementation for List::SomeUtils

DISTNAME =	List-SomeUtils-XS-0.58
REVISION =	1

CATEGORIES =	textproc

# Artistic 2.0
PERMIT_PACKAGE =	Yes

WANTLIB +=	c perl

MODULES =	cpan

TEST_DEPENDS =	devel/p5-Test-LeakTrace \
		devel/p5-Test-Warnings>=0.006

.include <bsd.port.mk>
