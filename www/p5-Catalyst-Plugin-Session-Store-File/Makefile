# $OpenBSD: Makefile,v 1.19 2020/07/03 21:45:58 sthen Exp $

COMMENT=	catalyst file storage backend for session data

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Catalyst-Plugin-Session-Store-File-0.18
CATEGORIES=	www
REVISION=	1

# Perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	devel/p5-Cache-Cache \
		devel/p5-Class-Data-Inheritable \
		devel/p5-MRO-Compat \
		www/p5-Catalyst-Plugin-Session \
		www/p5-Catalyst-Runtime

MAKE_ENV=	TEST_POD=Yes

CONFIGURE_STYLE =	modinst

.include <bsd.port.mk>
