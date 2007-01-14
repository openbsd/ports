# $OpenBSD: Makefile,v 1.15 2007/01/14 20:49:06 simon Exp $

COMMENT=	"module for writing rpc servers and clients"

MODULES=	cpan
DISTNAME=	PlRPC-0.2018
PKGNAME=	p5-${DISTNAME}p0
CATEGORIES=	net

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	:p5-Net-Daemon->=0.13:net/p5-Net-Daemon
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
