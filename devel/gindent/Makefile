# $OpenBSD: Makefile,v 1.13 2000/02/16 10:52:09 espie Exp $

DISTNAME=	indent-2.2.2
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR= indent

MAINTAINER=	ports@OpenBSD.ORG

LICENSE_TYPE=		GPL
PERMIT_PACKAGE_CDROM=	YES
PERMIT_PACKAGE_FTP=	YES
PERMIT_DISTFILES_CDROM=	YES
PERMIT_DISTFILES_FTP=	YES

GNU_CONFIGURE=	yes

post-extract:
	@rm ${WRKSRC}/indent.info*

do-install:
	@${INSTALL_PROGRAM} ${WRKSRC}/indent ${PREFIX}/bin/gindent
	@${INSTALL_MAN} ${WRKSRC}/indent.1 ${PREFIX}/man/man1/gindent.1
	@if [ ! -f ${PREFIX}/info/dir ]; then \
	    sed -ne '1,/Menu:/p' /usr/share/info/dir > ${PREFIX}/info/dir; \
	fi
	@${INSTALL_DATA} ${WRKSRC}/indent.info ${PREFIX}/info
	@install-info ${PREFIX}/info/indent.info ${PREFIX}/info/dir

.include <bsd.port.mk>
