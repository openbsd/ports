# $OpenBSD: Makefile,v 1.1.1.1 2004/01/05 17:42:47 sturm Exp $

COMMENT=	"subclass of AppConfig that provides standard options"

DISTNAME=	AppConfig-Std-1.07
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5 

MAINTAINER=	Sam Smith <s@msmith.net>

# Artistic/GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

REGRESS_DEPENDS=${RUN_DEPENDS}
RUN_DEPENDS=	::devel/p5-AppConfig

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=AppConfig/}

CONFIGURE_STYLE=perl

.include <bsd.port.mk>
