# OpenBSD makefile for:	bash
# Version required:     1.14.7
# Date created:		17 November 1997
# Whom:			gene
#
# $OpenBSD: Makefile,v 1.3 1997/11/19 01:07:52 joey Exp $
#

DISTNAME=       bash-1.14.7
CATEGORIES=	shells
MASTER_SITES=   ${MASTER_SITE_GNU}

MAINTAINER=	gene@OpenBSD.ORG

WRKSRC=         ${WRKDIR}/${DISTNAME}

# Don't compress manpages or .so not works.

post-install:
	@if [ ! -f ${PREFIX}/info/dir ]; then \
	  ${SED} -ne '1,/Menu:/p' /usr/share/info/dir > ${PREFIX}/info/dir; \
	 fi
	@install-info ${PREFIX}/info/bash.info ${PREFIX}/info/dir

.include <bsd.port.mk>
