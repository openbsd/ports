# $OpenBSD: Makefile,v 1.19 2010/10/18 18:36:56 espie Exp $

COMMENT=	module for writing rpc servers and clients

MODULES=	cpan
DISTNAME=	PlRPC-0.2018
REVISION=	0
CATEGORIES=	net
USE_GROFF =	Yes

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	:p5-Net-Daemon->=0.13:net/p5-Net-Daemon
BUILD_DEPENDS=	${RUN_DEPENDS}

CPAN_AUTHOR=	JWIED

.include <bsd.port.mk>
