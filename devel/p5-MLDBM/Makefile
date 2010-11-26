# $OpenBSD: Makefile,v 1.16 2010/11/26 07:19:01 espie Exp $

COMMENT=	store multi-level hash structure in single-level tied hash

MODULES=	cpan
DISTNAME=	MLDBM-2.01
REVISION=	1
CATEGORIES=	devel
USE_GROFF =	Yes

RUN_DEPENDS=	devel/p5-FreezeThaw>=0.3
BUILD_DEPENDS=	${RUN_DEPENDS}

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

.include <bsd.port.mk>
