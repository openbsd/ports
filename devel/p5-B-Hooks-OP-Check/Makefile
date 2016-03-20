# $OpenBSD: Makefile,v 1.13 2016/03/20 19:56:13 naddy Exp $

COMMENT=		wrap OP check callbacks

DISTNAME=		B-Hooks-OP-Check-0.19
REVISION=		2

CATEGORIES=		devel

# perl
PERMIT_PACKAGE_CDROM=   Yes

WANTLIB += c perl

MODULES=		cpan

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/p5-ExtUtils-Depends>=0.302

.include <bsd.port.mk>
