# $OpenBSD: Makefile,v 1.5 2006/12/06 12:54:28 jasper Exp $
PKG_ARCH=	*

COMMENT=	"perl module for a plain virtual filesystem"
DISTNAME=	Filesys-Virtual-Plain-0.10
CATEGORIES=	sysutils

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# same as perl
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

BUILD_DEPENDS=	:p5-Filesys-Virtual->=0.05:sysutils/p5-Filesys-Virtual
RUN_DEPENDS=	${BUILD_DEPENDS}

MODULES=	cpan

.include <bsd.port.mk>
