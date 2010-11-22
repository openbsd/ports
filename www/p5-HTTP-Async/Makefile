# $OpenBSD: Makefile,v 1.4 2010/11/22 08:36:51 espie Exp $

COMMENT=	process multiple HTTP requests in parallel without blocking

MODULES=	cpan
DISTNAME=	HTTP-Async-0.09
CATEGORIES=	www
USE_GROFF =	Yes

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=  Yes
PERMIT_PACKAGE_FTP=    Yes
PERMIT_DISTFILES_CDROM=Yes
PERMIT_DISTFILES_FTP=  Yes

RUN_DEPENDS=	www/p5-libwww

REGRESS_DEPENDS=www/p5-Test-HTTP-Server-Simple

.include <bsd.port.mk>
