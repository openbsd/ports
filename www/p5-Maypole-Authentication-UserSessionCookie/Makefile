# $OpenBSD: Makefile,v 1.5 2010/07/13 20:14:24 sthen Exp $

COMMENT=	track sessions and, optionally, users

MODULES=	cpan
DISTNAME=	Maypole-Authentication-UserSessionCookie-1.1
REVISION=	0
CATEGORIES=	www

MAINTAINER=	Sam Smith <S@msmith.net>

# Same as Maypole which is same as Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Apache/SIMON/} 

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::www/p5-Maypole

.include <bsd.port.mk>
