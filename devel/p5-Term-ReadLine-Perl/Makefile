# $OpenBSD: Makefile,v 1.9 2019/07/12 20:45:08 sthen Exp $

COMMENT=		minimal interface to Readline
DISTNAME =		Term-ReadLine-Perl-1.0303
REVISION =		0
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
