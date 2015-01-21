# $OpenBSD: Makefile,v 1.4 2015/01/21 06:13:47 bentley Exp $

COMMENT=		trap exit codes

DISTNAME =		Test-Trap-v0.2.4
PKGNAME=		p5-${DISTNAME:S/v//}
REVISION =		0

CATEGORIES=		devel

# perl
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		cpan
RUN_DEPENDS=		devel/p5-Data-Dump  \
			devel/p5-Test-Tester
BUILD_DEPENDS=		${RUN_DEPENDS}

MAKE_ENV=		TEST_POD=Yes

CONFIGURE_STYLE=	modbuild

.include <bsd.port.mk>
