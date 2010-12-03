# $OpenBSD: Makefile,v 1.21 2010/12/03 11:45:43 ajacoutot Exp $

COMMENT=	module for writing rpc servers and clients

MODULES=	cpan
DISTNAME=	PlRPC-0.2018
REVISION=	1
CATEGORIES=	net
USE_GROFF =	Yes

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	net/p5-Net-Daemon>=0.13
BUILD_DEPENDS=	${RUN_DEPENDS}

CPAN_AUTHOR=	JWIED

.include <bsd.port.mk>
