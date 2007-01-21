# $OpenBSD: Makefile,v 1.3 2007/01/21 21:46:21 simon Exp $

COMMENT=		"parse, analyze and manipulate Perl"

MODULES=		cpan
DISTNAME=		PPI-1.118
PKGNAME=		p5-${DISTNAME}p0
CATEGORIES=		textproc

# Artistic/GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

CPAN_AUTHOR=		ADAMK

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		:p5-Clone->=0.17:devel/p5-Clone \
			::devel/p5-IO-String \
			::devel/p5-List-MoreUtils \
			::devel/p5-Params-Util \
			::devel/p5-Task-Weaken
REGRESS_DEPENDS=	::devel/p5-Test-Object

.include <bsd.port.mk>
