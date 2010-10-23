# $OpenBSD: Makefile,v 1.7 2010/10/23 11:04:19 jasper Exp $

COMMENT=	simple standalone HTTP server

MODULES=	cpan
DISTNAME=	HTTP-Server-Simple-0.38
CATEGORIES=	www
USE_GROFF =	Yes
REVISION =	0

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

REGRESS_DEPENDS=	::devel/p5-Test-Pod \
			::devel/p5-Test-Pod-Coverage \
			::www/p5-URI

.include <bsd.port.mk>
