# $OpenBSD: Makefile,v 1.2 2010/10/19 08:02:55 espie Exp $

COMMENT=	concise attribute rewriting

MODULES=	cpan
DISTNAME=	HTML-RewriteAttributes-0.03
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	www devel
USE_GROFF =	Yes

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

REGRESS_DEPENDS=	::www/p5-HTML-Parser

.include <bsd.port.mk>
