# $OpenBSD: Makefile,v 1.14 2016/11/23 14:20:07 sthen Exp $

COMMENT=	fast audio metadata and tag reader for Perl

DISTNAME=	Audio-Scan-0.96
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
