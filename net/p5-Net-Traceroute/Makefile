# $OpenBSD: Makefile,v 1.4 2002/06/08 18:24:13 wilfried Exp $

COMMENT=		"traceroute(1) functionality in perl"

DISTNAME=		Net-Traceroute-1.05
PKGNAME=		p5-${DISTNAME}
CATEGORIES=		net
NEED_VERSION=		1.515

HOMEPAGE=		http://www.linnaean.org/~hag/perl/traceroute/traceroute.html

MAINTAINER=		Heikki Korpela <heko@openbsd.org>

# License: MIT
PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM= Yes 
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_PERL_CPAN:=Net/}

CONFIGURE_STYLE=	perl

.include <bsd.port.mk>
