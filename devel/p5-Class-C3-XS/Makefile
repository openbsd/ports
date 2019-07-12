# $OpenBSD: Makefile,v 1.20 2019/07/12 20:44:46 sthen Exp $

COMMENT=		XS speed-up for Class-C3

MODULES=		cpan
DISTNAME =		Class-C3-XS-0.14
CATEGORIES=		devel
FIX_EXTRACT_PERMISSIONS=Yes

CPAN_AUTHOR =		ETHER

# Perl
PERMIT_PACKAGE=	Yes

WANTLIB += c perl

RUN_DEPENDS=		devel/p5-Class-C3>=0.15

.include <bsd.port.mk>
