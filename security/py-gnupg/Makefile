# $OpenBSD: Makefile,v 1.11 2003/07/31 19:11:59 sturm Exp $


COMMENT=	"python module for GnuPG interface"

VERSION=	0.3.2
DISTNAME=	GnuPGInterface-${VERSION}
PKGNAME=	py-gnupg-${VERSION}
CATEGORIES=    	security devel

HOMEPAGE=	http://py-gnupg.sourceforge.net/

MAINTAINER=	Shell Hung <shell@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=py-gnupg/}

MODULES=	python

MODPY_VERSION=	2.1
MODPY_DISTUTILS_INSTALLARGS=	-O1

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	:gnupg-*:security/gnupg

NO_REGRESS=	Yes

.include <bsd.port.mk>
