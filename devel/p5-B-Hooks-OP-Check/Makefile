# $OpenBSD: Makefile,v 1.16 2019/07/12 21:02:15 sthen Exp $

COMMENT=		wrap OP check callbacks

DISTNAME =		B-Hooks-OP-Check-0.21

CATEGORIES=		devel
FIX_EXTRACT_PERMISSIONS=Yes

# perl
PERMIT_PACKAGE=	Yes

WANTLIB +=		c perl

MODULES=		cpan

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/p5-ExtUtils-Depends>=0.302

.include <bsd.port.mk>
