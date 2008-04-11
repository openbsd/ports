# $OpenBSD: Makefile,v 1.1.1.1 2008/04/11 22:48:45 simon Exp $

COMMENT=	perl port of jQuery.js

MODULES=	cpan
DISTNAME=	pQuery-0.05
CATEGORIES=	www

MAINTAINER=	Girish Venkatachalam <girish1729@gmail.com>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CPAN_AUTHOR=	INGY

RUN_DEPENDS=	::www/p5-HTML-Tree
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
