# OpenBSD makefile for:	pine
# http://www.washington.edu/pine/
# Version required:     3.96
# Date created:		10 Nov 1997
# Whom:			ejovi
#
# $OpenBSD: Makefile,v 1.2 1997/11/17 21:47:31 joey Exp $
#

DISTNAME=       pine3.96
PKGNAME=        pine-3.96
CATEGORIES=     mail news
MASTER_SITES=	ftp://ftp.cac.washington.edu/pine/

MAINTAINER=	joey@OpenBSD.ORG

MAN1= 		pine.1 pico.1 pilot.1

post-install:
	install -d -o ${SHAREOWN} -g ${SHAREGRP} -m 755 \
		${PREFIX}/share/doc/pine
	cd ${WRKSRC} && \
		${INSTALL_DATA} doc/tech-notes.txt ${PREFIX}/share/doc/pine

.include <bsd.port.mk>
