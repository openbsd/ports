# $OpenBSD: Makefile,v 1.10 2013/05/04 22:34:12 sthen Exp $

COMMENT=	fast audio metadata and tag reader for Perl

SHARED_ONLY=	Yes
DISTNAME=	Audio-Scan-0.93
CATEGORIES=	audio

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += z

MODULES=	cpan

TEST_FLAGS=	TEST_POD=1
TEST_DEPENDS=	devel/p5-Test-Pod \
		devel/p5-Test-Pod-Coverage \
		devel/p5-Test-Warn

.include <bsd.port.mk>
