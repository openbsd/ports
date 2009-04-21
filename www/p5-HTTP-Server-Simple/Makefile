# $OpenBSD: Makefile,v 1.5 2009/04/21 09:27:52 robert Exp $

COMMENT=	simple standalone HTTP server

MODULES=	cpan
DISTNAME=	HTTP-Server-Simple-0.38
CATEGORIES=	www

MAINTAINER=	Deanna Phillips <deanna@sdf.lonestar.org>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

REGRESS_DEPENDS=	::devel/p5-Test-Pod \
			::devel/p5-Test-Pod-Coverage \
			::www/p5-URI

.include <bsd.port.mk>
