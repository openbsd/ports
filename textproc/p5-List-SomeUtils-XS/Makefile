# $OpenBSD: Makefile,v 1.4 2019/07/12 20:50:04 sthen Exp $

COMMENT =	XS implementation for List::SomeUtils

DISTNAME =	List-SomeUtils-XS-0.58

CATEGORIES =	textproc

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# Artistic 2.0
PERMIT_PACKAGE =	Yes

WANTLIB +=	c perl

MODULES =	cpan

TEST_DEPENDS =	devel/p5-Test-LeakTrace \
		devel/p5-Test-Warnings>=0.006

.include <bsd.port.mk>
