# $OpenBSD: Makefile,v 1.8 2013/03/11 11:44:47 espie Exp $

COMMENT=		smart URI fetching/caching

MODULES=		cpan
DISTNAME=		URI-Fetch-0.08
REVISION=		1
CATEGORIES=		www
USE_GROFF =		Yes

CONFIGURE_STYLE=	modbuild

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	www/p5-URI \
		www/p5-libwww \
		devel/p5-Class-ErrorHandler

.include <bsd.port.mk>
