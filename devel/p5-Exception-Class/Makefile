# $OpenBSD: Makefile,v 1.4 2004/04/18 19:51:40 robert Exp $

COMMENT=	"module to declare real exception classes in perl"

DISTNAME=	Exception-Class-1.19
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5

MAINTAINER=	Michael Coulter <mjc@bitz.ca>

# Artistic License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Exception/}

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	:p5-Class-Data-Inheritable->=0.02:devel/p5-Class-Data-Inheritable \
		:p5-Devel-StackTrace->=1.11:devel/p5-Devel-StackTrace

CONFIGURE_STYLE=	perl

.include <bsd.port.mk>
