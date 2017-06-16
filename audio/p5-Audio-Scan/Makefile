# $OpenBSD: Makefile,v 1.15 2017/06/16 14:24:52 sthen Exp $

COMMENT=	fast audio metadata and tag reader for Perl

DISTNAME=	Audio-Scan-0.98
CATEGORIES=	audio

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += perl z

MODULES=	cpan

TEST_FLAGS=	TEST_POD=1
TEST_DEPENDS=	devel/p5-Test-Pod \
		devel/p5-Test-Pod-Coverage \
		devel/p5-Test-Warn

.include <bsd.port.mk>
