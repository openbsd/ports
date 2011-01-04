# $OpenBSD: Makefile,v 1.1.1.1 2011/01/04 10:12:57 kevlo Exp $

COMMENT=		trap exit codes

DISTNAME=		Test-Trap-v0.2.1
PKGNAME=		p5-${DISTNAME:S/v//}

CATEGORIES=		devel

MAINTAINER=		Kevin Lo <kevlo@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		cpan
RUN_DEPENDS=		devel/p5-Data-Dump  \
			devel/p5-Test-Tester
BUILD_DEPENDS=		${RUN_DEPENDS}

MAKE_ENV=		TEST_POD=Yes

USE_GROFF=		Yes
CONFIGURE_STYLE=	modbuild

.include <bsd.port.mk>
