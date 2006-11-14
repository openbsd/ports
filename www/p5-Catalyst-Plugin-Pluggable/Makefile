# $OpenBSD: Makefile,v 1.2 2006/11/14 10:22:12 espie Exp $

COMMENT=		"universal forwarder for catalyst applications"

MODULES=		cpan
DISTNAME=		Catalyst-Plugin-Pluggable-0.04
CATEGORIES=		devel

MAINTAINER=		Sean Comeau <scomeau@obscurity.org>

# same as perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=		::www/p5-Catalyst-Runtime

MAKE_ENV=		TEST_POD=Yes

.include <bsd.port.mk>
