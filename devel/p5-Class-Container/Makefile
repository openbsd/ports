# $OpenBSD: Makefile,v 1.2 2002/11/13 18:39:40 naddy Exp $

COMMENT=	"validate method/function parameters"

DISTNAME=	Class-Container-0.08
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5

MAINTAINER=	Jim Geovedi <jim@corebsd.or.id>

# Artistic License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Class/}

BUILD_DEPENDS=	:p5-Scalar-List-Utils->=1.07:devel/p5-Scalar-List-Utils \
		:p5-Params-Validate->=0.23:devel/p5-Params-Validate
RUN_DEPENDS=	${BUILD_DEPENDS}

CONFIGURE_STYLE=	perl

.include <bsd.port.mk>
