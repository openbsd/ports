# $OpenBSD: Makefile,v 1.1.1.1 2006/11/13 15:20:26 espie Exp $

COMMENT= 	"MVC web framework for perl"

MODULES=	cpan

DISTNAME=	CGI-Application-4.06
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
