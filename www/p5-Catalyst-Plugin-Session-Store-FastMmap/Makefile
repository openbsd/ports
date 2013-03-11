# $OpenBSD: Makefile,v 1.9 2013/03/11 11:44:45 espie Exp $

COMMENT=	FastMmap storage backend for session data

MODULES=	cpan
DISTNAME=	Catalyst-Plugin-Session-Store-FastMmap-0.14
CATEGORIES=	www
USE_GROFF =	Yes

# Artistic + GPL
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	www/p5-Catalyst-Runtime \
		devel/p5-Cache-FastMmap \
		devel/p5-MRO-Compat \
		devel/p5-Path-Class \
		www/p5-Catalyst-Plugin-Session>=0.27

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
