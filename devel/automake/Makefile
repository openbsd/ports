# $OpenBSD: Makefile,v 1.5 1999/03/02 23:34:15 jasoni Exp $
#

DISTNAME=	automake-1.4
CATEGORIES=	devel

MASTER_SITES=	${MASTER_SITE_GNU}

MAINTAINER=	jasoni@openbsd.org

GNU_CONFIGURE=	yes
CONFIGURE_ENV=	PERL=/usr/bin/perl
USE_PERL5=	YES
STRIP=		# none

post-install:
	@if [ ! -f ${PREFIX}/info/dir ]; then \
	  ${SED} -ne '1,/Menu:/p' /usr/share/info/dir > ${PREFIX}/info/dir; \
	 fi
	@install-info ${PREFIX}/info/automake.info ${PREFIX}/info/dir

.include <bsd.port.mk>
