# $OpenBSD: Makefile,v 1.4 1999/03/07 00:14:42 brad Exp $
#

DISTNAME=	indent-1.9.1
CATEGORIES=	devel

MAINTAINER=	ports@OpenBSD.ORG

MASTER_SITES=	${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR= indent

do-install:
	@${INSTALL_PROGRAM} ${WRKSRC}/indent ${PREFIX}/bin/gindent
	@${INSTALL_MAN} ${WRKSRC}/indent.1 ${PREFIX}/man/man1/gindent.1
	@if [ ! -f ${PREFIX}/info/dir ]; then \
	  if [ -f /usr/share/info/dir ]; then \
	    ${SED} -ne '1,/Menu:/p' /usr/share/info/dir > ${PREFIX}/info/dir; \
	  else \
	    touch ${PREFIX}/info/dir ; \
	  fi ; \
	fi
	@${INSTALL_DATA} ${WRKSRC}/indent.info ${PREFIX}/info
	@install-info ${PREFIX}/info/indent.info ${PREFIX}/info/dir

.include <bsd.port.mk>
