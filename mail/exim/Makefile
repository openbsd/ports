# OpenBSD makefile for: exim 
# Version required: 	1.71 
# Date created: 	10 Nov 1997
# Whom: 		ejovi  

DISTNAME=	exim-1.71
CATEGORIES=	mail
MASTER_SITES=	ftp://ftp.cus.cam.ac.uk/pub/software/programs/exim/
DISTFILES=	exim-1.71.tar.gz exim-texinfo-1.71.tar.gz

MAINTAINER=	ejovi@OpenBSD.ORG

do-configure:
	@${MKDIR} ${WRKSRC}/Local
	@${CP} ${FILESDIR}/Makefile ${WRKSRC}/Local
	@${CP} ${FILESDIR}/eximon.conf ${WRKSRC}/Local
	@(cd ${WRKSRC}/doc ; \
	for i in ../../exim-texinfo-1.71/doc/* ; do \
		ln -sf $$i ; \
	done )

.include <bsd.port.mk>
