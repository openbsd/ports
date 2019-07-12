# $OpenBSD: Makefile,v 1.20 2019/07/12 20:43:38 sthen Exp $

COMMENT=	fast audio metadata and tag reader for Perl

DISTNAME=	Audio-Scan-1.01
CATEGORIES=	audio

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += c perl z

MODULES=	cpan

TEST_DEPENDS=	devel/p5-Test-Warn

MAKE_ENV+=	TEST_POD=Yes

.include <bsd.port.mk>
