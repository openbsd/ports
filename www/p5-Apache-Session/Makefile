# $OpenBSD: Makefile,v 1.6 2010/04/15 14:29:17 ajacoutot Exp $

COMMENT=	persistence framework for Apache session data

MODULES=	cpan
DISTNAME=	Apache-Session-1.83
PKGNAME=	p5-${DISTNAME}p0
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
