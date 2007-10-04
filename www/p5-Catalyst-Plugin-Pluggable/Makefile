# $OpenBSD: Makefile,v 1.4 2007/10/04 21:25:25 jasper Exp $

COMMENT=		universal forwarder for catalyst applications

MODULES=		cpan
DISTNAME=		Catalyst-Plugin-Pluggable-0.04
PKGNAME=		p5-${DISTNAME}p0
CATEGORIES=		www devel

MAINTAINER=		Sean Comeau <scomeau@obscurity.org>

# same as perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=		::www/p5-Catalyst-Runtime

MAKE_ENV=		TEST_POD=Yes

.include <bsd.port.mk>
