# OpenBSD makefile for:  c2t
# Version required:     	  1.0
# Date created:			  Nov 26, 1997
# Whom:				  ejovi
#
# $OpenBSD: Makefile,v 1.1.1.1 1997/11/26 22:56:45 joey Exp $	
#

PKGNAME=	zh-c2t-1.0
CATEGORIES=	chinese
MASTER_SITES=	ftp://ftp.ifcss.org/pub/software/unix/convert/  \
		ftp://ftp.ifcss.org/pub/software/x-win/cxterm/dict/gb/  \
		ftp://ftp.edu.tw/Chinese/ifcss/software/unix/convert/  \
		ftp://ftp.edu.tw/Chinese/ifcss/software/x-win/cxterm/dict/gb/ \
		ftp://ftp.cuhk.hk/pub/chinese/ifcss/software/unix/convert/  \
		ftp://ftp.cuhk.hk/pub/chinese/ifcss/software/x-win/cxterm/dict/gb/
DISTFILES=	c2t.tar.gz TONEPY.tit

MAINTAINER=     joey@OpenBSD.ORG

NO_WRKSUBDIR=	yes
EXTRACT_ONLY=	c2t.tar.gz
MAN1=		c2t.1

do-install:
	@${MKDIR} ${PREFIX}/share/chinese/gb
	${INSTALL_PROGRAM} ${WRKSRC}/c2t ${PREFIX}/bin
	${INSTALL_DATA} ${DISTDIR}/TONEPY.tit ${PREFIX}/share/chinese/gb
	${INSTALL_MAN} ${WRKSRC}/${MAN1} ${PREFIX}/man/man1

.include <bsd.port.mk>
