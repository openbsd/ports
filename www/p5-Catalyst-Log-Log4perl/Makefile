# $OpenBSD: Makefile,v 1.9 2012/04/08 21:58:16 sthen Exp $

COMMENT=		Log::Log4perl logging for Catalyst (deprecated)

MODULES=		cpan
DISTNAME=		Catalyst-Log-Log4perl-1.05
CATEGORIES=		www devel
USE_GROFF =		Yes

MAINTAINER=		Sean Comeau <scomeau@obscurity.org>

# same as perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=		www/p5-Catalyst-Runtime \
			devel/p5-Log-Log4perl>=1.28 \
			devel/p5-MRO-Compat \
			devel/p5-Params-Validate \
			devel/p5-Sub-Install

CONFIGURE_ARGS +=	--skipdeps

.include <bsd.port.mk>
