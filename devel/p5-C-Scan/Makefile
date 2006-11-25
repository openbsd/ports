# $OpenBSD: Makefile,v 1.10 2006/11/25 16:32:33 espie Exp $

COMMENT=	"module to scan C language files"

MODULES=	cpan
DISTNAME=	C-Scan-0.74
PKGNAME=	p5-${DISTNAME}p0
CATEGORIES=	devel

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

RUN_DEPENDS=	:p5-Data-Flow->=0.05:devel/p5-Data-Flow
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
