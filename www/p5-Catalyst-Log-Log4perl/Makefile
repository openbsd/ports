# $OpenBSD: Makefile,v 1.1.1.1 2006/11/06 14:15:15 espie Exp $

COMMENT=		"Log::Log4perl logging for Catalyst"

DISTNAME=		Catalyst-Log-Log4perl-0.4
PKGNAME=		p5-${DISTNAME}
CATEGORIES=		devel perl5 

MAINTAINER=		Sean Comeau <scomeau@obscurity.org>

# same as perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_PERL_CPAN:=Catalyst/}

RUN_DEPENDS=		::www/p5-Catalyst-Runtime \
			::devel/p5-Log-Log4perl
REGRESS_DEPENDS=	${RUN_DEPENDS}

CONFIGURE_STYLE= 	perl

PKG_ARCH=		*

.include <bsd.port.mk>
