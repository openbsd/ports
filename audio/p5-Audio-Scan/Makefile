# $OpenBSD: Makefile,v 1.17 2017/09/23 10:51:07 sthen Exp $

COMMENT=	fast audio metadata and tag reader for Perl

DISTNAME=	Audio-Scan-0.98
REVISION=	1
CATEGORIES=	audio

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c perl z

MODULES=	cpan

TEST_FLAGS=	TEST_POD=1
TEST_DEPENDS=	devel/p5-Test-Pod \
		devel/p5-Test-Pod-Coverage \
		devel/p5-Test-Warn

.include <bsd.port.mk>
