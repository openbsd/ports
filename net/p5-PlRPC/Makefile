# $OpenBSD: Makefile,v 1.12 2003/07/17 05:24:04 kevlo Exp $

COMMENT=	"module for writing rpc servers and clients"

DISTNAME=	PlRPC-0.2017
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	net perl5

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=   ${MASTER_SITE_PERL_CPAN:=RPC/}

BUILD_DEPENDS=	:p5-Net-Daemon->=0.13:net/p5-Net-Daemon
RUN_DEPENDS=	${BUILD_DEPENDS}

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
