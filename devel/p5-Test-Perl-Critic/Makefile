# $OpenBSD: Makefile,v 1.7 2010/12/03 11:44:37 ajacoutot Exp $

COMMENT= 	test framework to run Perl::Critic

MODULES=	cpan
DISTNAME=	Test-Perl-Critic-1.02
REVISION=	0
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
