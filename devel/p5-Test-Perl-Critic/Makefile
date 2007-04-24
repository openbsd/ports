# $OpenBSD: Makefile,v 1.2 2007/04/24 01:43:21 msf Exp $

COMMENT= 	"test framework to run Perl::Critic"

MODULES=	cpan
DISTNAME=	Test-Perl-Critic-1.01
CATEGORIES=	devel

MAINTAINER=	Mathieu Sauve-Frankel <msf@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	modbuild

RUN_DEPENDS=		::devel/p5-Perl-Critic

MAKE_ENV=		TEST_POD=Yes

.include <bsd.port.mk>
