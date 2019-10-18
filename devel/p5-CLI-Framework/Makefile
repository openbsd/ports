# $OpenBSD: Makefile,v 1.1.1.1 2019/10/18 11:05:30 cwen Exp $

COMMENT =	framework for building flexible cli applications

DISTNAME =	CLI-Framework-0.05

CATEGORIES =	devel

# Perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan
RUN_DEPENDS =		devel/p5-Exception-Class \
			devel/p5-Exception-Class-TryCatch \
			devel/p5-Getopt-Long-Descriptive \
			devel/p5-Class-Inspector
TEST_DEPENDS =		databases/p5-DBD-SQLite

PKG_ARCH = 		*

.include <bsd.port.mk>
