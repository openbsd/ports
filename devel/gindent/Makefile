# $OpenBSD: Makefile,v 1.8 1999/07/17 03:52:02 brad Exp $

DISTNAME=	indent-2.1.1
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
