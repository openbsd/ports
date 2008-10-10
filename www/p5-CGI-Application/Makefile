# $OpenBSD: Makefile,v 1.4 2008/10/10 13:09:17 jasper Exp $

COMMENT= 	MVC web framework for perl

MODULES=	cpan

DISTNAME=	CGI-Application-4.11
CATEGORIES=	www

HOMEPAGE=	http://www.cgi-app.org/

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=modbuild

RUN_DEPENDS=	::www/p5-HTML-Template

.include <bsd.port.mk>
