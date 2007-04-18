# $OpenBSD: Makefile,v 1.1.1.1 2007/04/18 00:06:49 espie Exp $

COMMENT=		"autodiscover syndication feeds"

MODULES=		cpan
CPAN_AUTHOR=		BTROTT
DISTNAME=		Feed-Find-0.06
CATEGORIES=		www

CONFIGURE_STYLE=	modbuild

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::www/p5-libwww \
		::www/p5-HTML-Parser \
		::www/p5-URI \
		::devel/p5-Class-ErrorHandler

.include <bsd.port.mk>
