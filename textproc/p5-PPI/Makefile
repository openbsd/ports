# $OpenBSD: Makefile,v 1.6 2010/06/30 16:50:02 jim Exp $

COMMENT=		parse, analyze and manipulate Perl

MODULES=		cpan
DISTNAME=		PPI-1.212
CATEGORIES=		textproc

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

CPAN_AUTHOR=		ADAMK

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		:p5-Clone->=0.25:devel/p5-Clone \
			::devel/p5-IO-String \
			::devel/p5-List-MoreUtils \
			::devel/p5-Params-Util \
			::devel/p5-Task-Weaken
REGRESS_DEPENDS=	::devel/p5-Class-Inspector \
			::devel/p5-File-Remove \
			::devel/p5-Test-NoWarnings \
			::devel/p5-Test-Object \
			::devel/p5-Test-SubCalls

.include <bsd.port.mk>
