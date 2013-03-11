# $OpenBSD: Makefile,v 1.10 2013/03/11 10:50:13 espie Exp $

SHARED_ONLY=		Yes

COMMENT=		wrap OP check callbacks

DISTNAME=		B-Hooks-OP-Check-0.19
REVISION=		0

CATEGORIES=		devel

# perl
PERMIT_PACKAGE_CDROM=   Yes

WANTLIB += c

MODULES=		cpan

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/p5-ExtUtils-Depends>=0.302

.include <bsd.port.mk>
