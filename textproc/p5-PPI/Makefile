# $OpenBSD: Makefile,v 1.1.1.1 2006/10/27 09:33:53 jasper Exp $

COMMENT=		"parse, analyze and manipulate Perl"

DISTNAME=		PPI-1.118
PKGNAME=		p5-${DISTNAME}
CATEGORIES=		textproc perl5

# Artistic/GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_PERL_CPAN:=../../authors/id/A/AD/ADAMK/}

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		:p5-Clone->=0.17:devel/p5-Clone \
			::devel/p5-IO-stringy \
			::devel/p5-List-MoreUtils \
			::devel/p5-Params-Util \
			::devel/p5-Task-Weaken
#REGRESS_DEPENDS=	::devel/p5-Test-Object # which needs a more current Perl
CONFIGURE_STYLE=	perl

PKG_ARCH=		*

.include <bsd.port.mk>
