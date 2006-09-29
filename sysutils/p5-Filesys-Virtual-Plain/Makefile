# $OpenBSD: Makefile,v 1.4 2006/09/29 08:42:32 jasper Exp $
PKG_ARCH=	*

COMMENT=	"perl module for a plain virtual filesystem"
DISTNAME=	Filesys-Virtual-Plain-0.10
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	sysutils perl5

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

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
