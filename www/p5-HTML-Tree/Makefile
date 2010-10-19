# $OpenBSD: Makefile,v 1.22 2010/10/19 08:02:56 espie Exp $

COMMENT=	perl parser that builds an HTML tree

MODULES=	cpan
DISTNAME=	HTML-Tree-3.23
CATEGORIES=	www
USE_GROFF =	Yes

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	:p5-HTML-Parser->=2.19:www/p5-HTML-Parser
BUILD_DEPENDS=	${RUN_DEPENDS}

REGRESS_DEPENDS=	::devel/p5-Test-Pod

.include <bsd.port.mk>
