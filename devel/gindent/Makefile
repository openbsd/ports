# $OpenBSD: Makefile,v 1.10 1999/09/30 23:54:11 brad Exp $

DISTNAME=	indent-2.2.2
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR= indent

MAINTAINER=	ports@OpenBSD.ORG

GNU_CONFIGURE=	yes

post-extract:
	@${RM} ${WRKSRC}/indent.info*

do-install:
	@${INSTALL_PROGRAM} ${WRKSRC}/indent ${PREFIX}/bin/gindent
	@${INSTALL_MAN} ${WRKSRC}/indent.1 ${PREFIX}/man/man1/gindent.1
	@if [ ! -f ${PREFIX}/info/dir ]; then \
	    ${SED} -ne '1,/Menu:/p' /usr/share/info/dir > ${PREFIX}/info/dir; \
	fi
	@${INSTALL_DATA} ${WRKSRC}/indent.info ${PREFIX}/info
	@install-info ${PREFIX}/info/indent.info ${PREFIX}/info/dir

.include <bsd.port.mk>
