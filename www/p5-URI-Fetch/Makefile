# $OpenBSD: Makefile,v 1.1.1.1 2007/04/17 23:59:31 espie Exp $

COMMENT=		"smart URI fetching/caching"

MODULES=		cpan
DISTNAME=		URI-Fetch-0.08
CATEGORIES=		www

CONFIGURE_STYLE=	modbuild

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::www/p5-URI \
		::www/p5-libwww \
		::devel/p5-Class-ErrorHandler

.include <bsd.port.mk>
