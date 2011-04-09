# $OpenBSD: Makefile,v 1.10 2011/04/09 08:03:36 jasper Exp $

COMMENT=		parse, analyze and manipulate Perl

MODULES=		cpan
DISTNAME=		PPI-1.215
CATEGORIES=		textproc
USE_GROFF =		Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

CPAN_AUTHOR=		ADAMK

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/p5-Clone>=0.30 \
			devel/p5-IO-String \
			devel/p5-List-MoreUtils \
			devel/p5-Params-Util
REGRESS_DEPENDS=	devel/p5-Class-Inspector \
			devel/p5-File-Remove \
			devel/p5-Hook-LexWrap \
			devel/p5-Task-Weaken \
			devel/p5-Test-NoWarnings \
			devel/p5-Test-Object \
			devel/p5-Test-SubCalls

.include <bsd.port.mk>
