# $OpenBSD: Makefile,v 1.2 2002/11/13 18:47:15 naddy Exp $

COMMENT=	"module to declare real exception classes in perl"

DISTNAME=	Exception-Class-1.07
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5

MAINTAINER=	Jim Geovedi <jim@corebsd.or.id>

# Artistic License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Exception/}

BUILD_DEPENDS=	:p5-Class-Data-Inheritable->=0.02:devel/p5-Class-Data-Inheritable \
		:p5-Devel-StackTrace->=1.01:devel/p5-Devel-StackTrace
RUN_DEPENDS=	${BUILD_DEPENDS}

CONFIGURE_STYLE=	perl

.include <bsd.port.mk>
