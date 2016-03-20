# $OpenBSD: Makefile,v 1.13 2016/03/20 19:56:06 naddy Exp $

COMMENT=	fast audio metadata and tag reader for Perl

DISTNAME=	Audio-Scan-0.93
CATEGORIES=	audio
REVISION=	1

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
