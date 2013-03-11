# $OpenBSD: Makefile,v 1.12 2013/03/11 11:42:43 espie Exp $

COMMENT=		parse, analyze and manipulate Perl

MODULES=		cpan
DISTNAME=		PPI-1.215
CATEGORIES=		textproc

# perl
PERMIT_PACKAGE_CDROM=	Yes

CPAN_AUTHOR=		ADAMK

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
