# $OpenBSD: Makefile,v 1.24 2010/12/03 11:44:22 ajacoutot Exp $

COMMENT=	perl interface to ZIP files

MODULES=	cpan

DISTNAME=	Archive-Zip-1.30
REVISION=	1

CATEGORIES=	archivers

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

REGRESS_DEPENDS = archivers/zip devel/p5-Test-Pod

USE_GROFF =	Yes

.include <bsd.port.mk>
