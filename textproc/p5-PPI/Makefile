# $OpenBSD: Makefile,v 1.14 2016/03/20 19:57:07 naddy Exp $

COMMENT=		parse, analyze and manipulate Perl

MODULES=		cpan
PKG_ARCH=		*
DISTNAME=		PPI-1.220
CATEGORIES=		textproc

# perl
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/p5-Clone>=0.30 \
			devel/p5-IO-String \
			devel/p5-List-MoreUtils \
			devel/p5-Params-Util
TEST_DEPENDS=	devel/p5-Class-Inspector \
			devel/p5-File-Remove \
			devel/p5-Hook-LexWrap \
			devel/p5-Task-Weaken \
			devel/p5-Test-NoWarnings \
			devel/p5-Test-Object \
			devel/p5-Test-SubCalls

.include <bsd.port.mk>
