# $OpenBSD: Makefile,v 1.5 2014/12/14 16:55:41 benoit Exp $

COMMENT=		minimal interface to Readline
DISTNAME =		Term-ReadLine-Perl-1.0303
CATEGORIES=		devel perl5

# perl
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${MASTER_SITE_PERL_CPAN:=Term/}

RUN_DEPENDS=		devel/p5-Term-ReadKey

TEST_ENV=		TEST_TARGET=test.pl
TEST_IS_INTERACTIVE= Yes

MODULES=		cpan

.include <bsd.port.mk>
