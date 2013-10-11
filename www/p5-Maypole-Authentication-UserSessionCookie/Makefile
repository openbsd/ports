# $OpenBSD: Makefile,v 1.11 2013/10/11 23:51:43 naddy Exp $

COMMENT=	track sessions and, optionally, users

MODULES=	cpan
DISTNAME=	Maypole-Authentication-UserSessionCookie-1.1
REVISION=	1
CATEGORIES=	www

MAINTAINER=	Sam Smith <S@msmith.net>

# Same as Maypole which is same as Perl
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Apache/SIMON/}

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	www/p5-Maypole

.include <bsd.port.mk>
