# $OpenBSD: Makefile,v 1.6 2013/03/11 11:44:46 espie Exp $

COMMENT=	process multiple HTTP requests in parallel without blocking

MODULES=	cpan
DISTNAME=	HTTP-Async-0.09
REVISION=	0
CATEGORIES=	www
USE_GROFF =	Yes

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=  Yes

RUN_DEPENDS=	www/p5-libwww

TEST_DEPENDS=www/p5-Test-HTTP-Server-Simple

.include <bsd.port.mk>
