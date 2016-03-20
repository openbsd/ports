# $OpenBSD: Makefile,v 1.12 2016/03/20 19:57:21 naddy Exp $

COMMENT=	track sessions and, optionally, users

MODULES=	cpan
PKG_ARCH=	*
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
