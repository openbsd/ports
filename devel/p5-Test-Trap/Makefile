# $OpenBSD: Makefile,v 1.2 2013/03/11 10:50:23 espie Exp $

COMMENT=		trap exit codes

DISTNAME=		Test-Trap-v0.2.1
PKGNAME=		p5-${DISTNAME:S/v//}

CATEGORIES=		devel

MAINTAINER=		Kevin Lo <kevlo@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		cpan
RUN_DEPENDS=		devel/p5-Data-Dump  \
			devel/p5-Test-Tester
BUILD_DEPENDS=		${RUN_DEPENDS}

MAKE_ENV=		TEST_POD=Yes

USE_GROFF=		Yes
CONFIGURE_STYLE=	modbuild

.include <bsd.port.mk>
