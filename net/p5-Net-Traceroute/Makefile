# $OpenBSD: Makefile,v 1.3 2002/05/15 17:42:25 espie Exp $

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

test: build
	@cd ${WRKBUILD} && exec ${SETENV} ${MAKE_ENV} \
		${MAKE_PROGRAM} ${MAKE_FLAGS} -f ${MAKE_FILE} test

.include <bsd.port.mk>
