# $OpenBSD: Makefile,v 1.2 2006/11/14 10:22:12 espie Exp $

COMMENT=		"catalyst plugin for prototype"

MODULES=		cpan
DISTNAME=		Catalyst-Plugin-Prototype-1.32
CATEGORIES=		devel www

MAINTAINER=		Sean Comeau <scomeau@obscurity.org>

# same as perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=		::www/p5-Catalyst-Runtime \
			::devel/p5-Class-Data-Inheritable \
			::www/p5-HTML-Prototype

MAKE_ENV=		TEST_POD=Yes

.include <bsd.port.mk>
