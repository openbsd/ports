# $OpenBSD: Makefile,v 1.9 2021/01/26 13:51:15 sthen Exp $

COMMENT=		trap exit codes

DISTNAME =		Test-Trap-v0.3.4
PKGNAME=		p5-${DISTNAME:S/v//}

CATEGORIES=		devel

# perl
PERMIT_PACKAGE=	Yes

MODULES=		cpan
PKG_ARCH=		*
RUN_DEPENDS=		devel/p5-Data-Dump

MAKE_ENV=		TEST_POD=Yes

CONFIGURE_STYLE=	modbuild

.include <bsd.port.mk>
