# $OpenBSD: Makefile,v 1.6 2010/10/19 08:02:56 espie Exp $

COMMENT=	simple standalone HTTP server

MODULES=	cpan
DISTNAME=	HTTP-Server-Simple-0.38
CATEGORIES=	www
USE_GROFF =	Yes

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
