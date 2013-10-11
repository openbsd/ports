# $OpenBSD: Makefile,v 1.10 2013/10/11 23:48:58 naddy Exp $

COMMENT=	mro::* interface compatibility for Perl < 5.9.5

MODULES=	cpan
DISTNAME=	MRO-Compat-0.11
REVISION=	0
CATEGORIES=	devel

CPAN_AUTHOR=	FLORA

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-Class-C3>=0.20
BUILD_DEPENDS=	${RUN_DEPENDS}

CONFIGURE_STYLE=	modinst

.include <bsd.port.mk>
