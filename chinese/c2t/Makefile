# $OpenBSD: Makefile,v 1.3 1999/04/01 02:57:54 brad Exp $	

DISTNAME=	zh-c2t-1.0
CATEGORIES=	chinese

MAINTAINER=     ports@openbsd.org

MASTER_SITES=	ftp://ftp.ifcss.org/pub/software/unix/convert/  \
		ftp://ftp.ifcss.org/pub/software/x-win/cxterm/dict/gb/  \
		ftp://ftp.edu.tw/Chinese/ifcss/software/unix/convert/  \
		ftp://ftp.edu.tw/Chinese/ifcss/software/x-win/cxterm/dict/gb/ \
		ftp://ftp.cuhk.hk/pub/chinese/ifcss/software/unix/convert/  \
		ftp://ftp.cuhk.hk/pub/chinese/ifcss/software/x-win/cxterm/dict/gb/
DISTFILES=	c2t.tar.gz TONEPY.tit
EXTRACT_ONLY=	c2t.tar.gz

NO_WRKSUBDIR=	yes

do-install:
	@${MKDIR} ${PREFIX}/share/chinese/gb
	${INSTALL_PROGRAM} ${WRKSRC}/c2t ${PREFIX}/bin
	${INSTALL_DATA} ${DISTDIR}/TONEPY.tit ${PREFIX}/share/chinese/gb
	${INSTALL_MAN} ${WRKSRC}/${MAN1} ${PREFIX}/man/man1

.include <bsd.port.mk>
