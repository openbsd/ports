# $OpenBSD: Makefile,v 1.7 2012/04/07 14:27:35 sthen Exp $

COMMENT=	publish DBIx::Class on the web

DISTNAME=	DBIx-Class-HTMLWidget-0.16
CATEGORIES=	databases www
MODULES=	cpan

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	databases/p5-DBIx-Class \
		www/p5-HTML-Widget

USE_GROFF =	Yes

.include <bsd.port.mk>
