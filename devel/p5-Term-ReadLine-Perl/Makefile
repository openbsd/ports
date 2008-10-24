# $OpenBSD: Makefile,v 1.1.1.1 2008/10/24 13:21:39 jasper Exp $

COMMENT=		minimal interface to Readline
DISTNAME=		Term-ReadLine-Perl-1.0302
CATEGORIES=		devel perl5

# perl
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

MASTER_SITES=		${MASTER_SITE_PERL_CPAN:=Term/}

RUN_DEPENDS=		::devel/p5-Term-ReadKey

REGRESS_ENV=		REGRESS_TARGET=test.pl
REGRESS_IS_INTERACTIVE= Yes

MODULES=		cpan

.include <bsd.port.mk>
