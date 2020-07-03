# $OpenBSD: Makefile,v 1.10 2020/07/03 21:45:59 sthen Exp $

COMMENT=		autodiscover syndication feeds

MODULES=		cpan
PKG_ARCH=		*
CPAN_AUTHOR=		BTROTT
DISTNAME=		Feed-Find-0.07
CATEGORIES=		www
REVISION=		0

# perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	www/p5-libwww \
		www/p5-HTML-Parser \
		www/p5-URI \
		devel/p5-Class-ErrorHandler

.include <bsd.port.mk>
