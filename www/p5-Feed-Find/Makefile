# $OpenBSD: Makefile,v 1.6 2011/03/23 07:43:33 jasper Exp $

COMMENT=		autodiscover syndication feeds

MODULES=		cpan
CPAN_AUTHOR=		BTROTT
DISTNAME=		Feed-Find-0.07
CATEGORIES=		www

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	www/p5-libwww \
		www/p5-HTML-Parser \
		www/p5-URI \
		devel/p5-Class-ErrorHandler

.include <bsd.port.mk>
