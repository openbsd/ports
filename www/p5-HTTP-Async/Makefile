# $OpenBSD: Makefile,v 1.1.1.1 2007/07/22 16:44:25 simon Exp $

COMMENT=	process multiple HTTP requests in parallel without blocking

MODULES=	cpan
DISTNAME=	HTTP-Async-0.07
CATEGORIES=	www

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=  Yes
PERMIT_PACKAGE_FTP=    Yes
PERMIT_DISTFILES_CDROM=Yes
PERMIT_DISTFILES_FTP=  Yes

RUN_DEPENDS=	::www/p5-libwww

REGRESS_DEPENDS=::www/p5-Test-HTTP-Server-Simple

.include <bsd.port.mk>
