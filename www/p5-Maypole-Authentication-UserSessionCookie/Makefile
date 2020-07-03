# $OpenBSD: Makefile,v 1.15 2020/07/03 21:46:04 sthen Exp $

COMMENT=	track sessions and, optionally, users

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Maypole-Authentication-UserSessionCookie-1.1
REVISION=	3
CATEGORIES=	www

# Same as Maypole which is same as Perl
PERMIT_PACKAGE=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Apache/SIMON/}

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	www/p5-Maypole

.include <bsd.port.mk>
