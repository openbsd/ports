# $OpenBSD: Makefile,v 1.7 2010/10/19 07:54:22 espie Exp $

COMMENT=	perl interface to Adobe Font Metrics files

MODULES=	cpan
DISTNAME=	Font-AFM-1.20
CATEGORIES=	textproc
USE_GROFF =	Yes
 
# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

REGRESS_DEPENDS=	:${PKGNAME}:${BUILD_PKGPATH}

.include <bsd.port.mk>
