# $OpenBSD: Makefile,v 1.17 2020/05/17 23:29:00 afresh1 Exp $

COMMENT=		adding keywords to perl, in perl

DISTNAME =		Devel-Declare-0.006022

CATEGORIES=		devel
FIX_EXTRACT_PERMISSIONS=Yes

# perl
PERMIT_PACKAGE=	Yes

WANTLIB += c perl

MODULES=		cpan

BUILD_DEPENDS=		devel/p5-B-Hooks-OP-Check>=0.19
RUN_DEPENDS=		devel/p5-B-Hooks-OP-Check>=0.19 \
			devel/p5-B-Hooks-EndOfScope \
			devel/p5-Sub-Name
TEST_DEPENDS =		devel/p5-Test-Requires

.include <bsd.port.mk>
