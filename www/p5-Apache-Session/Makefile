# $OpenBSD: Makefile,v 1.11 2011/01/14 22:50:56 jasper Exp $

COMMENT=	persistence framework for Apache session data

MODULES=	cpan
DISTNAME=	Apache-Session-1.83
REVISION=	2
CATEGORIES=	www databases
USE_GROFF =	Yes

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

REGRESS_DEPENDS= devel/p5-Test-Deep \
		 devel/p5-Test-Exception

.include <bsd.port.mk>
