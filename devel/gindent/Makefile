# OpenBSD makefile for:   indent
# Version required:    1.9.1
# Date created:        1 Nov 1997
# Whom:                ejovi
#
# $OpenBSD: Makefile,v 1.1.1.1 1997/12/02 00:18:41 joey Exp $
#
        
DISTNAME=      indent-1.9.1
CATEGORIES=    devel
MASTER_SITES=  ${MASTER_SITE_GNU}

MAINTAINER=    joey@OpenBSD.ORG
        
MAN1=          indent.1

post-install:
	@mv ${PREFIX}/bin/indent ${PREFIX}/bin/indent
	@strip ${PREFIX}/bin/indent
	@test -d ${PREFIX}/info || ${MKDIR} ${PREFIX}/info  \
		&& chmod a+rx ${PREFIX}/info
	@if [ ! -f ${PREFIX}/info/dir ]; then \
	  if [ -f /usr/share/info/dir ]; then \
	    ${SED} -ne '1,/Menu:/p' /usr/share/info/dir > ${PREFIX}/info/dir; \
	  else \
	    touch ${PREFIX}/info/dir ; \
	  fi ; \
	fi
	@install-info ${PREFIX}/info/indent.info ${PREFIX}/info/dir

.include <bsd.port.mk>
