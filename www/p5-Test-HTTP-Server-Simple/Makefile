# $OpenBSD: Makefile,v 1.1.1.1 2006/11/12 16:30:48 espie Exp $

COMMENT= 	"test framework for HTTP::Server::Simple"

MODULES=	cpan

DISTNAME=	Test-HTTP-Server-Simple-0.03
CATEGORIES=	www devel

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::www/p5-HTTP-Server-Simple
MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
