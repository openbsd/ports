# $OpenBSD: Makefile,v 1.3 2007/09/15 20:38:24 merdely Exp $

COMMENT=	track sessions and, optionally, users

MODULES=	cpan
DISTNAME=	Maypole-Authentication-UserSessionCookie-1.1
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
