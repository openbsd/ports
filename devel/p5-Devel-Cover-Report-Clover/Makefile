# $OpenBSD: Makefile,v 1.6 2020/07/03 21:44:49 sthen Exp $

COMMENT =	backend for Clover reporting of coverage statistics

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Devel-Cover-Report-Clover-1.01
CATEGORIES =	devel
REVISION =	0

# perl
PERMIT_PACKAGE =	Yes

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
