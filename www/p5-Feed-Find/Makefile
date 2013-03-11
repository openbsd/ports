# $OpenBSD: Makefile,v 1.7 2013/03/11 11:44:45 espie Exp $

COMMENT=		autodiscover syndication feeds

MODULES=		cpan
CPAN_AUTHOR=		BTROTT
DISTNAME=		Feed-Find-0.07
CATEGORIES=		www

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	www/p5-libwww \
		www/p5-HTML-Parser \
		www/p5-URI \
		devel/p5-Class-ErrorHandler

.include <bsd.port.mk>
