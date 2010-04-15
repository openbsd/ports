# $OpenBSD: Makefile,v 1.4 2010/04/15 14:29:17 ajacoutot Exp $

COMMENT=	track sessions and, optionally, users

MODULES=	cpan
DISTNAME=	Maypole-Authentication-UserSessionCookie-1.1
PKGNAME=	p5-${DISTNAME}p0
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
