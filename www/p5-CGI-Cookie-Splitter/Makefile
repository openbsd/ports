# $OpenBSD: Makefile,v 1.2 2007/01/16 17:52:06 simon Exp $

COMMENT=	"splits big cookies into small pieces"

MODULES=	cpan
DISTNAME=	CGI-Cookie-Splitter-0.01
CATEGORIES=	www

# perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

RUN_DEPENDS=		::www/p5-CGI-Simple
REGRESS_DEPENDS=	::devel/p5-Test-use-ok

.include <bsd.port.mk>
