# $OpenBSD: Makefile,v 1.8 2002/05/15 17:42:25 espie Exp $

COMMENT=	"module for writing rpc servers and clients"

DISTNAME=	PlRPC-0.2016
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	net perl5
NEED_VERSION=	1.515

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=   ${MASTER_SITE_PERL_CPAN:=RPC/}

PERL_MODULES=	${LOCALBASE}/libdata/perl5/site_perl
BUILD_DEPENDS=	::net/p5-Net-Daemon \
		::devel/p5-Storable

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
