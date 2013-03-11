# $OpenBSD: Makefile,v 1.9 2013/03/11 10:50:16 espie Exp $

SHARED_ONLY=		Yes

COMMENT=		adding keywords to perl, in perl

DISTNAME=		Devel-Declare-0.006007
REVISION=		0

CATEGORIES=		devel

# perl
PERMIT_PACKAGE_CDROM=   Yes

WANTLIB += c

MODULES=		cpan

BUILD_DEPENDS=		devel/p5-B-Hooks-OP-Check>=0.19
RUN_DEPENDS=		devel/p5-B-Hooks-OP-Check>=0.19 \
			devel/p5-B-Hooks-EndOfScope \
			devel/p5-Sub-Name
TEST_DEPENDS=	devel/p5-Test-Warn

.include <bsd.port.mk>
