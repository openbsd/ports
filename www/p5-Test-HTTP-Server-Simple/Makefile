# $OpenBSD: Makefile,v 1.4 2010/10/19 08:02:56 espie Exp $

COMMENT= 	test framework for HTTP::Server::Simple

MODULES=	cpan

DISTNAME=	Test-HTTP-Server-Simple-0.09
CATEGORIES=	www devel
USE_GROFF =	Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::www/p5-HTTP-Server-Simple
MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
