# $OpenBSD: Makefile,v 1.8 2012/04/08 21:58:49 sthen Exp $

COMMENT=	FastMmap storage backend for session data

MODULES=	cpan
DISTNAME=	Catalyst-Plugin-Session-Store-FastMmap-0.14
CATEGORIES=	www
USE_GROFF =	Yes

# Artistic + GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	www/p5-Catalyst-Runtime \
		devel/p5-Cache-FastMmap \
		devel/p5-MRO-Compat \
		devel/p5-Path-Class \
		www/p5-Catalyst-Plugin-Session>=0.27

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
