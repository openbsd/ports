# $OpenBSD: Makefile,v 1.2 2006/12/16 08:15:37 steven Exp $

COMMENT=		"inside-out object scaffolding"

MODULES=		cpan
DISTNAME=		Class-Std-v0.0.8
PKGNAME=		p5-Class-Std-0.0.8p0
CATEGORIES=		devel

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=		::devel/p5-version
BUILD_DEPENDS=		${RUN_DEPENDS}

CONFIGURE_STYLE=	modbuild

MAKE_ENV=		TEST_POD=Yes

.include <bsd.port.mk>
