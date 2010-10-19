# $OpenBSD: Makefile,v 1.2 2010/10/19 07:43:01 espie Exp $

COMMENT=	poor man's daily snapshot

DISTNAME=	glastree-1.04

HOMEPAGE=	http://www.igmus.org/code/

MASTER_SITES=	http://www.igmus.org/files/

CATEGORIES=	sysutils

# Public domain
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::devel/p5-Date-Calc

BUILD_DEPENDS=	${RUN_DEPENDS}

REGRESS_TARGET=	test
USE_GROFF =	Yes

.include <bsd.port.mk>
