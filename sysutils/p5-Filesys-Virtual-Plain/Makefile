# $OpenBSD: Makefile,v 1.3 2005/12/06 19:26:28 steven Exp $
PKG_ARCH=	*

COMMENT=	"perl module for a plain virtual filesystem"
DISTNAME=	Filesys-Virtual-Plain-0.08
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	sysutils perl5

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@nedbsd.nl>

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Filesys/}

# same as perl
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

BUILD_DEPENDS=	:p5-Filesys-Virtual->=0.05:sysutils/p5-Filesys-Virtual
RUN_DEPENDS=	${BUILD_DEPENDS}

CONFIGURE_STYLE=perl

.include <bsd.port.mk>
