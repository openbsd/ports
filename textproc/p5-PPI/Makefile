# $OpenBSD: Makefile,v 1.5 2008/10/03 10:33:26 jasper Exp $

COMMENT=		parse, analyze and manipulate Perl

MODULES=		cpan
DISTNAME=		PPI-1.203
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
REGRESS_DEPENDS=	::devel/p5-Test-Object

.include <bsd.port.mk>
