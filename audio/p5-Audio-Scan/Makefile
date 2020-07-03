# $OpenBSD: Makefile,v 1.21 2020/07/03 21:44:30 sthen Exp $

COMMENT=	fast audio metadata and tag reader for Perl

DISTNAME=	Audio-Scan-1.01
CATEGORIES=	audio
REVISION=	0

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += c perl z

MODULES=	cpan

TEST_DEPENDS=	devel/p5-Test-Warn

MAKE_ENV+=	TEST_POD=Yes

.include <bsd.port.mk>
