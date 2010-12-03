# $OpenBSD: Makefile,v 1.17 2010/12/03 11:44:33 ajacoutot Exp $

COMMENT=	store multi-level hash structure in single-level tied hash

MODULES=	cpan
DISTNAME=	MLDBM-2.01
REVISION=	2
CATEGORIES=	devel
USE_GROFF =	Yes

RUN_DEPENDS=	devel/p5-FreezeThaw>=0.3
BUILD_DEPENDS=	${RUN_DEPENDS}

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

.include <bsd.port.mk>
