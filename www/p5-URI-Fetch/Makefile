# $OpenBSD: Makefile,v 1.4 2010/07/13 20:14:24 sthen Exp $

COMMENT=		smart URI fetching/caching

MODULES=		cpan
DISTNAME=		URI-Fetch-0.08
REVISION=		0
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
