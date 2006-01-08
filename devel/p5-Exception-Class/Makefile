# $OpenBSD: Makefile,v 1.5 2006/01/08 16:15:12 steven Exp $

COMMENT=	"module to declare real exception classes in perl"

DISTNAME=	Exception-Class-1.22
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5

MAINTAINER=	Michael Coulter <mjc@bitz.ca>

# GPL/Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Exception/}

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	:p5-Class-Data-Inheritable->=0.02:devel/p5-Class-Data-Inheritable \
		:p5-Devel-StackTrace->=1.12:devel/p5-Devel-StackTrace

CONFIGURE_STYLE=	perl

PKG_ARCH=	*

.include <bsd.port.mk>
