COMMENT=	fast audio metadata and tag reader for Perl

DISTNAME=	Audio-Scan-1.01
CATEGORIES=	audio
REVISION=	0

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += c perl z

MODULES=	cpan
MODPERL_REGEN_PPPORT =	include/ppport.h

TEST_DEPENDS=	devel/p5-Test-Warn

MAKE_ENV+=	TEST_POD=Yes

.include <bsd.port.mk>
