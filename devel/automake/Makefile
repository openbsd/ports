# OpenBSD makefile for:	automake
# Version required:	1.2
# Date created:		1 Dec 1997
# Whom:			ejovi
#
# $OpenBSD: Makefile,v 1.1.1.1 1997/12/01 22:58:50 joey Exp $
#

DISTNAME=	automake-1.2
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GNU}

MAINTAINER=	joey@OpenBSD.ORG

GNU_CONFIGURE=	yes
CONFIGURE_ENV=	PERL=/usr/bin/perl
STRIP=		 # none
pre-install:
	@if [ ! -f ${PREFIX}/info/dir ]; then \
	  ${SED} -ne '1,/Menu:/p' /usr/share/info/dir > ${PREFIX}/info/dir; \
	 fi

.include <bsd.port.mk>
