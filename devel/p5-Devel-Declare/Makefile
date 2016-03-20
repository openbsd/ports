# $OpenBSD: Makefile,v 1.13 2016/03/20 19:56:20 naddy Exp $

COMMENT=		adding keywords to perl, in perl

DISTNAME =		Devel-Declare-0.006018

CATEGORIES=		devel

# perl
PERMIT_PACKAGE_CDROM=   Yes

WANTLIB += c perl

MODULES=		cpan

BUILD_DEPENDS=		devel/p5-B-Hooks-OP-Check>=0.19
RUN_DEPENDS=		devel/p5-B-Hooks-OP-Check>=0.19 \
			devel/p5-B-Hooks-EndOfScope \
			devel/p5-Sub-Name
TEST_DEPENDS =		devel/p5-Test-Requires

.include <bsd.port.mk>
