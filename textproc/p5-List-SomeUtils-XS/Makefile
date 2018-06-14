# $OpenBSD: Makefile,v 1.3 2018/06/14 13:51:39 fcambus Exp $

COMMENT =	XS implementation for List::SomeUtils

DISTNAME =	List-SomeUtils-XS-0.58

CATEGORIES =	textproc

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# Artistic 2.0
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=	c perl

MODULES =	cpan

TEST_DEPENDS =	devel/p5-Test-LeakTrace \
		devel/p5-Test-Warnings>=0.006

.include <bsd.port.mk>
