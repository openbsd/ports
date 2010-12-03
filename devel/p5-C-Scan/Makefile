# $OpenBSD: Makefile,v 1.16 2010/12/03 11:44:27 ajacoutot Exp $

COMMENT=	module to scan C language files

MODULES=	cpan
DISTNAME=	C-Scan-0.74
REVISION=	1
CATEGORIES=	devel
USE_GROFF =	Yes

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

RUN_DEPENDS=	devel/p5-Data-Flow>=0.05
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
