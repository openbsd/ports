# $OpenBSD: Makefile,v 1.3 1998/10/18 05:02:04 marc Exp $
#

DISTNAME=	automake-1.2
CATEGORIES=	devel

#BROKEN=	"newer version available"

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
