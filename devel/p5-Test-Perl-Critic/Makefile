# $OpenBSD: Makefile,v 1.6 2010/11/15 19:46:06 espie Exp $

COMMENT= 	test framework to run Perl::Critic

MODULES=	cpan
DISTNAME=	Test-Perl-Critic-1.02
CATEGORIES=	devel
USE_GROFF =	Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	modbuild

RUN_DEPENDS=		devel/p5-Perl-Critic

MAKE_ENV=		TEST_POD=Yes

.include <bsd.port.mk>
