# OpenBSD makefile for: exim 
# Version required: 	1.71 
# Date created: 	10 Nov 1997
# Whom: 		ejovi  
#
# $OpenBSD: Makefile,v 1.3 1997/12/31 11:34:26 tacho Exp $
#

DISTNAME=	exim-1.82
CATEGORIES=	mail
MASTER_SITES=	ftp://ftp.cus.cam.ac.uk/pub/software/programs/exim/
DISTFILES=	exim-1.82.tar.gz exim-texinfo-1.80.tar.gz

MAINTAINER=	joey@OpenBSD.ORG

do-configure:
	@${MKDIR} ${WRKSRC}/Local
	@${CP} ${FILESDIR}/Makefile ${WRKSRC}/Local
	@${CP} ${FILESDIR}/eximon.conf ${WRKSRC}/Local
	@(cd ${WRKSRC}/doc ; \
	for i in ../../exim-texinfo-1.71/doc/* ; do \
		ln -sf $$i ; \
	done )

.include <bsd.port.mk>
