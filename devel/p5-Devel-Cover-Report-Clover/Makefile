# $OpenBSD: Makefile,v 1.1.1.1 2013/10/30 09:50:30 schwarze Exp $

COMMENT =	backend for Clover reporting of coverage statistics

MODULES =	cpan
DISTNAME =	Devel-Cover-Report-Clover-0.35
CATEGORIES =	devel
MAINTAINER =	Ingo Schwarze <schwarze@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM =	Yes

CPAN_AUTHOR =	DBARTLE

RUN_DEPENDS = 	devel/p5-Class-Accessor \
		textproc/p5-Template \
		devel/p5-Devel-Cover \
		www/p5-HTML-Parser

TEST_DEPENDS =	sysutils/p5-File-Which \
		devel/p5-Test-Exception \
		devel/p5-Test-MockObject \
		devel/p5-Test-MockTime \
		textproc/p5-Template \
		devel/p5-Devel-Cover

CONFIGURE_STYLE = modbuild

.include <bsd.port.mk>
