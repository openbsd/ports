# $OpenBSD: Makefile,v 1.2 1998/10/08 18:22:13 marc Exp $
#

DISTNAME=	automake-1.2
CATEGORIES=	devel

BROKEN=		"newer version available"

MAINTAINER=	joey@OpenBSD.ORG

MASTER_SITES=	${MASTER_SITE_GNU}

GNU_CONFIGURE=	yes
CONFIGURE_ENV=	PERL=/usr/bin/perl
STRIP=

pre-install:
	@if [ ! -f ${PREFIX}/info/dir ]; then \
	  ${SED} -ne '1,/Menu:/p' /usr/share/info/dir > ${PREFIX}/info/dir; \
	 fi

.include <bsd.port.mk>
