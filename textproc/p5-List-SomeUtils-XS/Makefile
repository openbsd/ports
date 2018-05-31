# $OpenBSD: Makefile,v 1.2 2018/05/31 09:20:09 fcambus Exp $

COMMENT =	XS implementation for List::SomeUtils

DISTNAME =	List-SomeUtils-XS-0.57

CATEGORIES =	textproc

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# Artistic 2.0
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=	c perl

MODULES =	cpan

TEST_DEPENDS =	devel/p5-Test-LeakTrace \
		devel/p5-Test-Warnings>=0.006

.include <bsd.port.mk>
