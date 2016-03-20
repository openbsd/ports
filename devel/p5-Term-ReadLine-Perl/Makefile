# $OpenBSD: Makefile,v 1.6 2016/03/20 19:56:36 naddy Exp $

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
PKG_ARCH=		*

.include <bsd.port.mk>
