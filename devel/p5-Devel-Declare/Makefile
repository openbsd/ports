# $OpenBSD: Makefile,v 1.11 2014/12/19 07:24:08 benoit Exp $

SHARED_ONLY=		Yes

COMMENT=		adding keywords to perl, in perl

DISTNAME =		Devel-Declare-0.006017

CATEGORIES=		devel

# perl
PERMIT_PACKAGE_CDROM=   Yes

WANTLIB += c

MODULES=		cpan

BUILD_DEPENDS=		devel/p5-B-Hooks-OP-Check>=0.19
RUN_DEPENDS=		devel/p5-B-Hooks-OP-Check>=0.19 \
			devel/p5-B-Hooks-EndOfScope \
			devel/p5-Sub-Name
TEST_DEPENDS =		devel/p5-Test-Requires

.include <bsd.port.mk>
