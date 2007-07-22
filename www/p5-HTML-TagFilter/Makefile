# $OpenBSD: Makefile,v 1.1.1.1 2007/07/22 16:21:09 simon Exp $

COMMENT=	fine-grained html-filter, xss-blocker and mailto-obfuscator

MODULES=	cpan
DISTNAME=	HTML-TagFilter-1.03
CATEGORIES=	www

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=  Yes
PERMIT_PACKAGE_FTP=    Yes
PERMIT_DISTFILES_CDROM=Yes
PERMIT_DISTFILES_FTP=  Yes

RUN_DEPENDS=	::www/p5-HTML-Parser \
		::www/p5-URI

.include <bsd.port.mk>
