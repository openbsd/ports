# $OpenBSD: Makefile,v 1.10 2011/03/09 06:23:35 ajacoutot Exp $

COMMENT=	perl interface to Adobe Font Metrics files

MODULES=	cpan
DISTNAME=	Font-AFM-1.20
REVISION=	0
CATEGORIES=	textproc
USE_GROFF =	Yes
 
# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

REGRESS_DEPENDS=	${FULLPKGNAME}:${BUILD_PKGPATH}

.include <bsd.port.mk>
