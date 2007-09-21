# $OpenBSD: Makefile,v 1.5 2007/09/21 02:13:21 msf Exp $

COMMENT=	persistence framework for Apache session data

MODULES=	cpan
DISTNAME=	Apache-Session-1.83
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
