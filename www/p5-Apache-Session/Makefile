# $OpenBSD: Makefile,v 1.7 2010/07/13 20:14:23 sthen Exp $

COMMENT=	persistence framework for Apache session data

MODULES=	cpan
DISTNAME=	Apache-Session-1.83
REVISION=	0
CATEGORIES=	www databases

MAINTAINER=	Michael Coulter <mjc@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

REGRESS_DEPENDS= ::devel/p5-Test-Deep \
		 ::devel/p5-Test-Exception

.include <bsd.port.mk>
