# $OpenBSD: Makefile,v 1.1.1.1 2020/08/19 02:21:17 afresh1 Exp $

COMMENT =	generate SQL from Perl data structures

DISTNAME =	SQL-Abstract-Classic-1.91

CATEGORIES =	databases

MAINTAINER =	Wen Heping <wenheping2000@hotmail.com>

# Perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan

RUN_DEPENDS =		databases/p5-SQL-Abstract>=1.79 \
			devel/p5-MRO-Compat>=0.12

TEST_DEPENDS =		devel/p5-Test-Deep>=0.101 \
			devel/p5-Test-Exception>=0.31 \
			devel/p5-Test-Warn

CONFIGURE_STYLE =	modinst

PKG_ARCH =		*

.include <bsd.port.mk>
