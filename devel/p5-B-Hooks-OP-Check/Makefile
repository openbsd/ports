# $OpenBSD: Makefile,v 1.17 2020/02/05 10:11:01 benoit Exp $

COMMENT=		wrap OP check callbacks

DISTNAME =		B-Hooks-OP-Check-0.22

CATEGORIES=		devel
FIX_EXTRACT_PERMISSIONS=Yes

# perl
PERMIT_PACKAGE=	Yes

WANTLIB +=		c perl

MODULES=		cpan

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/p5-ExtUtils-Depends>=0.302

.include <bsd.port.mk>
