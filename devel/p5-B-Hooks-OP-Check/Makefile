# $OpenBSD: Makefile,v 1.14 2017/05/12 06:22:15 benoit Exp $

COMMENT=		wrap OP check callbacks

DISTNAME =		B-Hooks-OP-Check-0.21

CATEGORIES=		devel

# perl
PERMIT_PACKAGE_CDROM=   Yes

WANTLIB +=		c perl

MODULES=		cpan

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/p5-ExtUtils-Depends>=0.302

.include <bsd.port.mk>
