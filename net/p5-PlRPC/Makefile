# $OpenBSD: Makefile,v 1.14 2004/08/05 01:23:43 kevlo Exp $

COMMENT=	"module for writing rpc servers and clients"

DISTNAME=	PlRPC-0.2018
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	net perl5

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=   ${MASTER_SITE_PERL_CPAN:=RPC/}

RUN_DEPENDS=	:p5-Net-Daemon->=0.13:net/p5-Net-Daemon
BUILD_DEPENDS=	${RUN_DEPENDS}

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
