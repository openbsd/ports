# $OpenBSD: Makefile,v 1.11 2015/09/04 16:24:58 benoit Exp $

COMMENT=	FastMmap storage backend for session data

MODULES=	cpan
DISTNAME =	Catalyst-Plugin-Session-Store-FastMmap-0.16
CATEGORIES=	www

# perl
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS=	www/p5-Catalyst-Runtime \
		devel/p5-Cache-FastMmap \
		devel/p5-MRO-Compat \
		devel/p5-Path-Class \
		www/p5-Catalyst-Plugin-Session>=0.27

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
