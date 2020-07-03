# $OpenBSD: Makefile,v 1.14 2020/07/03 21:45:58 sthen Exp $

COMMENT=	FastMmap storage backend for session data

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	Catalyst-Plugin-Session-Store-FastMmap-0.16
CATEGORIES=	www
REVISION =	0

# perl
PERMIT_PACKAGE =	Yes

RUN_DEPENDS=	www/p5-Catalyst-Runtime \
		devel/p5-Cache-FastMmap \
		devel/p5-MRO-Compat \
		devel/p5-Path-Class \
		www/p5-Catalyst-Plugin-Session>=0.27

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
