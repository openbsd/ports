# $OpenBSD: Makefile,v 1.1.1.1 2008/03/29 11:42:40 matthieu Exp $

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

.include <bsd.port.mk>
