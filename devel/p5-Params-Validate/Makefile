# $OpenBSD: Makefile,v 1.8 2002/10/16 12:39:16 wilfried Exp $

COMMENT=	"perl module to validate function/method parameters"

DISTNAME=	Params-Validate-0.24
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5

MAINTAINER=	Jim Geovedi <jim@corebsd.or.id>

# Artistic License
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Attribute/}

BUILD_DEPENDS=	:p5-Attribute-Handlers-*:devel/p5-Attribute-Handlers
RUN_DEPENDS=	${BUILD_DEPENDS}

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
