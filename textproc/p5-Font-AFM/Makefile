# $OpenBSD: Makefile,v 1.6 2008/09/08 00:11:47 jasper Exp $

COMMENT=	perl interface to Adobe Font Metrics files

MODULES=	cpan
DISTNAME=	Font-AFM-1.20
CATEGORIES=	textproc
 
# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

REGRESS_DEPENDS=	:${PKGNAME}:${BUILD_PKGPATH}

.include <bsd.port.mk>
