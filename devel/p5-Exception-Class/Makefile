# $OpenBSD: Makefile,v 1.3 2003/04/30 19:13:50 wilfried Exp $

COMMENT=	"module to declare real exception classes in perl"

DISTNAME=	Exception-Class-1.12
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5

MAINTAINER=	Jim Geovedi <jim@corebsd.or.id>

# Artistic License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Exception/}

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	:p5-Class-Data-Inheritable->=0.02:devel/p5-Class-Data-Inheritable \
		:p5-Devel-StackTrace->=1.03:devel/p5-Devel-StackTrace

CONFIGURE_STYLE=	perl

.include <bsd.port.mk>
