# $OpenBSD: Makefile,v 1.7 2010/12/03 11:46:53 ajacoutot Exp $

COMMENT=		smart URI fetching/caching

MODULES=		cpan
DISTNAME=		URI-Fetch-0.08
REVISION=		1
CATEGORIES=		www
USE_GROFF =		Yes

CONFIGURE_STYLE=	modbuild

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	www/p5-URI \
		www/p5-libwww \
		devel/p5-Class-ErrorHandler

.include <bsd.port.mk>
