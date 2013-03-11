# $OpenBSD: Makefile,v 1.9 2013/03/11 10:50:18 espie Exp $

COMMENT=	mro::* interface compatibility for Perl < 5.9.5

MODULES=	cpan
DISTNAME=	MRO-Compat-0.11
REVISION=	0
CATEGORIES=	devel
USE_GROFF =	Yes

CPAN_AUTHOR=	FLORA

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-Class-C3>=0.20
BUILD_DEPENDS=	${RUN_DEPENDS}

CONFIGURE_STYLE=	modinst

.include <bsd.port.mk>
