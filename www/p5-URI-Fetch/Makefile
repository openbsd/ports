# $OpenBSD: Makefile,v 1.3 2010/04/15 14:29:18 ajacoutot Exp $

COMMENT=		smart URI fetching/caching

MODULES=		cpan
DISTNAME=		URI-Fetch-0.08
PKGNAME=		p5-${DISTNAME}p0
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
