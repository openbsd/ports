# $OpenBSD: Makefile,v 1.12 2015/07/16 23:57:20 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT=		wrap OP check callbacks

DISTNAME=		B-Hooks-OP-Check-0.19
REVISION=		2

CATEGORIES=		devel

# perl
PERMIT_PACKAGE_CDROM=   Yes

WANTLIB += c

MODULES=		cpan

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/p5-ExtUtils-Depends>=0.302

.include <bsd.port.mk>
