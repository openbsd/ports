# $OpenBSD: Makefile,v 1.4 2001/05/10 22:11:28 naddy Exp $

COMMENT=	"module for writing rpc servers and clients"

DISTNAME=	PlRPC-0.2015
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	net perl5
NEED_VERSION=	1.387

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=   ${MASTER_SITE_PERL_CPAN}
MASTER_SITE_SUBDIR= RPC

PERL_MODULES=	${LOCALBASE}/libdata/perl5/site_perl
BUILD_DEPENDS=	${PERL_MODULES}/Net/Daemon.pm::net/p5-Net-Daemon \
		${PERL_MODULES}/${MACHINE_ARCH}-openbsd/Storable.pm::devel/p5-Storable

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
