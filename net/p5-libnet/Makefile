#   $OpenBSD: Makefile,v 1.12 2002/06/26 01:14:50 kevlo Exp $

COMMENT=	"modules for net-based applications"

DISTNAME=	libnet-1.12
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	net perl5
NEED_VERSION=	1.504
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Net/}

MAINTAINER=	Marc Espie <espie@openbsd.org>

HOMEPAGE=	http://theory.uwinnipeg.ca/CPAN/data/libnet/Net/libnetFAQ.html

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= perl

REGRESS_DEPENDS=	::devel/p5-Test-Harness

.include <bsd.port.mk>
