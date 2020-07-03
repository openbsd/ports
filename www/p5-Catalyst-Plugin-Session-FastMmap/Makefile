# $OpenBSD: Makefile,v 1.16 2020/07/03 21:45:58 sthen Exp $

COMMENT=	FastMmap sessions for Catalyst (deprecated)

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Catalyst-Plugin-Session-FastMmap-0.13
CATEGORIES=	www
REVISION=	1

# Perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	www/p5-Catalyst-Runtime \
		devel/p5-Cache-FastMmap \
		devel/p5-Class-Accessor \
		devel/p5-Class-Data-Inheritable \
		devel/p5-MRO-Compat \
		www/p5-URI \
		www/p5-URI-Find

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
