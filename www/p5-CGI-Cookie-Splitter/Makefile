# $OpenBSD: Makefile,v 1.5 2010/10/19 08:02:54 espie Exp $

COMMENT=	splits big cookies into small pieces

MODULES=	cpan
DISTNAME=	CGI-Cookie-Splitter-0.02
CATEGORIES=	www
USE_GROFF =	Yes

# perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

RUN_DEPENDS=		::www/p5-CGI-Simple
REGRESS_DEPENDS=	::devel/p5-Test-use-ok

.include <bsd.port.mk>
