# $OpenBSD: Makefile,v 1.1.1.1 2006/12/10 12:40:34 espie Exp $

COMMENT= 	"test framework to run Perl::Critic"

MODULES=	cpan
DISTNAME=	Test-Perl-Critic-0.08
CATEGORIES=	devel

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	modbuild

RUN_DEPENDS=		::devel/p5-Perl-Critic

MAKE_ENV=		TEST_POD=Yes

.include <bsd.port.mk>
