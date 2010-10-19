# $OpenBSD: Makefile,v 1.6 2010/10/19 08:02:54 espie Exp $

COMMENT=		Log::Log4perl logging for Catalyst

MODULES=		cpan
DISTNAME=		Catalyst-Log-Log4perl-1.00
CATEGORIES=		www devel
USE_GROFF =	Yes

MAINTAINER=		Sean Comeau <scomeau@obscurity.org>

# same as perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=		::www/p5-Catalyst-Runtime \
			::devel/p5-Log-Log4perl \
			::devel/p5-Params-Validate \
			::devel/p5-Sub-Install
BUILD_DEPENDS=		${RUN_DEPENDS}

.include <bsd.port.mk>
