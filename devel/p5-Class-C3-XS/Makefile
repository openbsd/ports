# $OpenBSD: Makefile,v 1.15 2014/06/14 23:24:54 sthen Exp $

SHARED_ONLY=		Yes
COMMENT=		XS speed-up for Class-C3

MODULES=		cpan
DISTNAME=		Class-C3-XS-0.08
REVISION=		5
CATEGORIES=		devel
CPAN_AUTHOR=		BLBLACK

# Perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c

RUN_DEPENDS=		devel/p5-Class-C3>=0.15

.include <bsd.port.mk>
