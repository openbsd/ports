# $OpenBSD: Makefile,v 1.5 2004/05/16 09:18:17 xsa Exp $

COMMENT=	"validate method/function parameters"

DISTNAME=	Class-Container-0.11
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5

MAINTAINER=	Jim Geovedi <jim@corebsd.or.id>

# Artistic License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Class/}

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	:p5-Params-Validate->=0.58:devel/p5-Params-Validate

CONFIGURE_STYLE=	perl

.include <bsd.port.mk>
