# $OpenBSD: Makefile,v 1.9 2013/03/10 22:55:04 espie Exp $

COMMENT=	XS parser for many common audio formats

SHARED_ONLY=	Yes
DISTNAME=	Audio-Scan-0.87
REVISION=	0
CATEGORIES=	audio

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c z
MODULES=	cpan
CPAN_AUTHOR=	AGRUNDMA
USE_GROFF=	Yes

TEST_FLAGS=		TEST_POD=1
TEST_DEPENDS=		devel/p5-Test-Pod \
			devel/p5-Test-Pod-Coverage \
			devel/p5-Test-Warn

.include <bsd.port.mk>
