# $OpenBSD: Makefile,v 1.4 1998/11/19 07:33:12 jasoni Exp $
#

DISTNAME=	automake-1.3
CATEGORIES=	devel

MASTER_SITES=	${MASTER_SITE_GNU}

MAINTAINER=	jasoni@openbsd.org

GNU_CONFIGURE=	yes
CONFIGURE_ENV=	PERL=/usr/bin/perl
STRIP=		

post-install:
	@if [ ! -f ${PREFIX}/info/dir ]; then \
	  ${SED} -ne '1,/Menu:/p' /usr/share/info/dir > ${PREFIX}/info/dir; \
	 fi
	@install-info ${PREFIX}/info/automake.info ${PREFIX}/info/dir

.include <bsd.port.mk>
