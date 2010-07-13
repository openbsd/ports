# $OpenBSD: Makefile,v 1.13 2010/07/13 19:46:12 sthen Exp $

COMMENT=	store multi-level hash structure in single-level tied hash

MODULES=	cpan
DISTNAME=	MLDBM-2.01
REVISION=	1
CATEGORIES=	devel

RUN_DEPENDS=	:p5-FreezeThaw->=0.3:devel/p5-FreezeThaw
BUILD_DEPENDS=	${RUN_DEPENDS}

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

.include <bsd.port.mk>
