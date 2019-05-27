# $OpenBSD: Makefile,v 1.19 2019/05/27 11:48:38 cwen Exp $

COMMENT=	fast audio metadata and tag reader for Perl

DISTNAME=	Audio-Scan-1.01
CATEGORIES=	audio

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c perl z

MODULES=	cpan

TEST_DEPENDS=	devel/p5-Test-Warn

MAKE_ENV+=	TEST_POD=Yes

.include <bsd.port.mk>
