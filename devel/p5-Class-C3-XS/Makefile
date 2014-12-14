# $OpenBSD: Makefile,v 1.16 2014/12/14 10:47:06 benoit Exp $

SHARED_ONLY=		Yes
COMMENT=		XS speed-up for Class-C3

MODULES=		cpan
DISTNAME =		Class-C3-XS-0.13
CATEGORIES=		devel

CPAN_AUTHOR =		FLORA

# Perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c

RUN_DEPENDS=		devel/p5-Class-C3>=0.15

.include <bsd.port.mk>
