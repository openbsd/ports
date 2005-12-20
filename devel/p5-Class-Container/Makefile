# $OpenBSD: Makefile,v 1.6 2005/12/20 20:59:00 steven Exp $

COMMENT=	"validate method/function parameters"

DISTNAME=	Class-Container-0.12
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@nedbsd.nl>

# Artistic License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Class/}

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	:p5-Params-Validate->=0.23:devel/p5-Params-Validate

CONFIGURE_STYLE=	perl

PKG_ARCH= *

.include <bsd.port.mk>
