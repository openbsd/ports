# $OpenBSD: Makefile,v 1.6 2002/05/15 17:42:24 espie Exp $

COMMENT=	"extension for portable daemons"

DISTNAME=	Net-Daemon-0.36
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	net perl5
NEED_VERSION=	1.499

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=   ${MASTER_SITE_PERL_CPAN:=Net/}

CONFIGURE_STYLE= perl

REGRESS_TARGET=	test
REGRESS_DEPENDS= ::devel/p5-Test-Harness	

.include <bsd.port.mk>
