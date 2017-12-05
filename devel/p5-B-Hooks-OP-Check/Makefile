# $OpenBSD: Makefile,v 1.15 2017/12/05 16:25:45 espie Exp $

COMMENT=		wrap OP check callbacks

DISTNAME =		B-Hooks-OP-Check-0.21

CATEGORIES=		devel
FIX_EXTRACT_PERMISSIONS=Yes

# perl
PERMIT_PACKAGE_CDROM=   Yes

WANTLIB +=		c perl

MODULES=		cpan

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/p5-ExtUtils-Depends>=0.302

.include <bsd.port.mk>
