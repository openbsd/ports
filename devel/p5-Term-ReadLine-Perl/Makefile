# $OpenBSD: Makefile,v 1.10 2020/07/03 21:45:11 sthen Exp $

COMMENT=		minimal interface to Readline
DISTNAME =		Term-ReadLine-Perl-1.0303
REVISION =		1
CATEGORIES=		devel perl5
FIX_EXTRACT_PERMISSIONS=Yes

# perl
PERMIT_PACKAGE=	Yes

MASTER_SITES=		${MASTER_SITE_PERL_CPAN:=Term/}

TEST_ENV=		TEST_TARGET=test.pl
TEST_IS_INTERACTIVE= Yes

MODULES=		cpan
PKG_ARCH=		*

.include <bsd.port.mk>
