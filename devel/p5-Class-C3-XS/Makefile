# $OpenBSD: Makefile,v 1.14 2013/10/11 23:48:33 naddy Exp $

SHARED_ONLY=		Yes
COMMENT=		XS speed-up for Class-C3

MODULES=		cpan
DISTNAME=		Class-C3-XS-0.08
REVISION=		4
CATEGORIES=		devel
CPAN_AUTHOR=		BLBLACK

# Perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c

RUN_DEPENDS=		devel/p5-Class-C3>=0.15

.include <bsd.port.mk>
