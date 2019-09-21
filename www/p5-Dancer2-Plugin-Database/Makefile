# $OpenBSD: Makefile,v 1.6 2019/09/21 00:48:32 afresh1 Exp $

COMMENT =		easy database connections for Dancer2 applications

MODULES =		cpan
PKG_ARCH =		*
DISTNAME =		Dancer2-Plugin-Database-2.17
CATEGORIES =		www

# Perl
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =		www/p5-Dancer2>=0.166001 \
			www/p5-Dancer-Plugin-Database-Core>=0.16

TEST_DEPENDS =		databases/p5-DBD-SQLite \
			www/p5-HTTP-Message \
			www/p5-Plack>=1.0032 \
			devel/p5-Import-Into

MAKE_ENV =		TEST_POD=yes

.include <bsd.port.mk>
