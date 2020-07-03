# $OpenBSD: Makefile,v 1.8 2020/07/03 21:45:16 sthen Exp $

COMMENT=		trap exit codes

DISTNAME =		Test-Trap-v0.2.4
PKGNAME=		p5-${DISTNAME:S/v//}
REVISION =		2

CATEGORIES=		devel

# perl
PERMIT_PACKAGE=	Yes

MODULES=		cpan
PKG_ARCH=		*
RUN_DEPENDS=		devel/p5-Data-Dump

MAKE_ENV=		TEST_POD=Yes

CONFIGURE_STYLE=	modbuild

.include <bsd.port.mk>
