# $OpenBSD: Makefile,v 1.8 2002/09/19 06:01:45 kevlo Exp $

COMMENT=	"extension for portable daemons"

DISTNAME=	Net-Daemon-0.37
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	net perl5

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=   ${MASTER_SITE_PERL_CPAN:=Net/}

CONFIGURE_STYLE= perl

REGRESS_DEPENDS=	::devel/p5-Test-Harness

.include <bsd.port.mk>
